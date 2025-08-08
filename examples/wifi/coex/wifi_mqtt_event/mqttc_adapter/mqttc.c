
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <lwip/errno.h>
#include <netdb.h>

#include "utils_getopt.h"
#include "mqttc.h"

#include "mqtt.h"
#include "shell.h"
#include <esp_event.h>

ESP_EVENT_DEFINE_BASE(MQTT_EVENTS);

static esp_err_t esp_mqtt_dispatch_event(struct mqtt_client *client)
{
	esp_err_t ret;

	esp_event_post_to(client->loop_handler, MQTT_EVENTS, client->event.event_id,
			&client->event, sizeof(client->event), portMAX_DELAY);

	ret = esp_event_loop_run(client->loop_handler, 0);
	return ret;
}

//static void client_refresher(void* arg)
//{
//	struct mqtt_client *client = (struct mqtt_client *)arg;
//
//	client->runing = 1;
//
//    while(client->runing) {
//    	esp_event_loop_run(client->loop_handler, 200);
//    }
//    if (client->loop_internal) {
//    	esp_event_loop_delete(client->loop_handler);
//    }
//    mqtt_client_free(client->client);
//    client->client = NULL;
//    free(client);
//    vTaskDelete(NULL);
//}

static void __mqtt_connection_cb(mqtt_client_t *c, void *arg, mqtt_connection_status_t status)
{
	struct mqtt_client *mqtt_client = (struct mqtt_client *)arg;

	printf("connected status %d\r\n", status);

	memset(&mqtt_client->event, 0, sizeof(mqtt_client->event));
	switch (status) {
	case MQTT_CONNECT_DISCONNECTED:
	case MQTT_CONNECT_TIMEOUT:
		mqtt_client->event.event_id = MQTT_EVENT_DISCONNECTED;
		esp_mqtt_dispatch_event(mqtt_client);
		break;
	case MQTT_CONNECT_ACCEPTED:
		mqtt_client->event.event_id = MQTT_EVENT_CONNECTED;
		esp_mqtt_dispatch_event(mqtt_client);
		break;
	case MQTT_CONNECT_REFUSED_PROTOCOL_VERSION:
	case MQTT_CONNECT_REFUSED_IDENTIFIER:
	case MQTT_CONNECT_REFUSED_SERVER:
	case MQTT_CONNECT_REFUSED_USERNAME_PASS:
	case MQTT_CONNECT_REFUSED_NOT_AUTHORIZED_:
		mqtt_client->event.event_id = MQTT_CONNECTION_REFUSED_NOT_AUTHORIZED;
		esp_mqtt_dispatch_event(mqtt_client);
		break;
	default:
		break;
	}
}

static void __mqtt_sub_cb(void *arg, err_t err)
{
	struct mqtt_client *mqtt_client = (struct mqtt_client *)arg;

	//printf("%s %d\r\n", __func__, err);
	memset(&mqtt_client->event, 0, sizeof(mqtt_client->event));
	if (err != ERR_OK) {
		mqtt_client->event.err = err;
		mqtt_client->event.event_id = MQTT_EVENT_SUBSCRIBE_ERROR;
	} else {
		mqtt_client->event.event_id = MQTT_EVENT_SUBSCRIBED;
	}
	esp_mqtt_dispatch_event(mqtt_client);
}

static void __mqtt_unsub_cb(void *arg, err_t err)
{
	struct mqtt_client *mqtt_client = (struct mqtt_client *)arg;

	//printf("%s %d\r\n", __func__, err);
	memset(&mqtt_client->event, 0, sizeof(mqtt_client->event));
	if (err != ERR_OK) {
		mqtt_client->event.err = err;
		mqtt_client->event.event_id = MQTT_EVENT_UNSUBSCRIBE_ERROR;
	} else {
		mqtt_client->event.event_id = MQTT_EVENT_UNSUBSCRIBED;
	}
	esp_mqtt_dispatch_event(mqtt_client);
}

static void __mqtt_pub_cb(void *arg, err_t err)
{
	struct mqtt_client *mqtt_client = (struct mqtt_client *)arg;

	//printf("%s %d\r\n", __func__, err);
	memset(&mqtt_client->event, 0, sizeof(mqtt_client->event));
	if (err != ERR_OK) {
		mqtt_client->event.err = err;
		mqtt_client->event.event_id = MQTT_EVENT_PUBLISH_ERROR;
	} else {
		mqtt_client->event.event_id = MQTT_EVENT_PUBLISHED;
	}
	esp_mqtt_dispatch_event(mqtt_client);
}

static void __mqtt_incoming_subscribed_cb(void *arg, const char *topic, u32_t tot_len)
{
	struct mqtt_client *mqtt_client = (struct mqtt_client *)arg;

	//printf("%s,%d\r\n", topic, tot_len);

	memset(&mqtt_client->event, 0, sizeof(mqtt_client->event));
	mqtt_client->data_offset = 0;
	mqtt_client->event.total_data_len = tot_len;
	mqtt_client->event.current_data_offset = 0;
	mqtt_client->event.topic = topic;
	mqtt_client->event.topic_len = strlen(topic);
	mqtt_client->event.event_id = MQTT_EVENT_DATA;
}

static void __mqtt_incoming_data_cb(void *arg, const u8_t *data, u16_t len, u8_t flags)
{
	struct mqtt_client *mqtt_client = (struct mqtt_client *)arg;

	mqtt_client->event.data = data;
	mqtt_client->event.data_len = len;
	mqtt_client->event.current_data_offset = mqtt_client->data_offset;
	mqtt_client->data_offset += len;
	//printf("%s,%d,%d\r\n", data, len, mqtt_client->event.current_data_offset);

	esp_mqtt_dispatch_event(mqtt_client);
}


static int __resolve_hostname(const char *hostname, ip_addr_t *ip_addr)
{
	struct addrinfo hints, *res, *p;
	int status;

	memset(&hints, 0, sizeof(hints));
	hints.ai_family = AF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;

	if ((status = getaddrinfo(hostname, NULL, &hints, &res)) != 0) {
		printf("getaddrinfo error: %d\n", (status));
		return -1;
	}

	for (p = res; p != NULL; p = p->ai_next) {
		memset(ip_addr, 0, sizeof(ip_addr_t));

		if (p->ai_family == AF_INET) { // IPv4
			struct sockaddr_in *ipv4 = (struct sockaddr_in *)p->ai_addr;
			uint32_t addr = ntohl(ipv4->sin_addr.s_addr);
			IP_ADDR4(ip_addr,
					 addr >> 24 & 0xFF,
					 addr >> 16 & 0xFF,
					 addr >> 8 & 0xFF,
					 addr & 0xFF);
			printf("- IPv4: %s\n", ipaddr_ntoa(ip_addr));
		}
		break;
	}
	freeaddrinfo(res);
	return 0;
}

int mqttc_event_register(mqtt_client_handle_t mqtt, mqtt_event_id_t event, esp_event_handler_t event_handler, void *event_handler_arg)
{
    if (mqtt == NULL) {
        return ESP_ERR_INVALID_ARG;
    }

    return esp_event_handler_register_with(mqtt->loop_handler, MQTT_EVENTS, event, event_handler, event_handler_arg);
}

int mqttc_event_unregister(mqtt_client_handle_t mqtt, mqtt_event_id_t event, esp_event_handler_t event_handler)
{
    if (mqtt == NULL) {
        return ESP_ERR_INVALID_ARG;
    }

    return esp_event_handler_unregister_with(mqtt->loop_handler, MQTT_EVENTS, event, event_handler);
}

int mqttc_connect(mqtt_client_handle_t mqtt_client, const char *hostname, u16_t port, const struct mqtt_connect_client_info_t *client_info)
{
	int err;
	ip_addr_t ipaddr;

    if (0 != __resolve_hostname(hostname, &ipaddr)) {
    	return -1;
    }

	err = mqtt_client_connect(mqtt_client->client, &ipaddr, port, __mqtt_connection_cb, mqtt_client, client_info);

	return err;
}

int mqttc_disconnect(mqtt_client_handle_t mqtt_client)
{
	if (!mqtt_client_is_connected(mqtt_client->client)) {
		return 0;
	}
	mqtt_disconnect(mqtt_client->client);
	memset(&mqtt_client->event, 0, sizeof(mqtt_client->event));
	mqtt_client->event.event_id = MQTT_EVENT_DISCONNECTED;
	esp_mqtt_dispatch_event(mqtt_client);

	return 0;
}

int mqttc_subscribe(mqtt_client_handle_t mqtt_client, const char *topic, u8_t qos)
{
	return mqtt_subscribe(mqtt_client->client, topic, qos, __mqtt_sub_cb, mqtt_client);
}

int mqttc_unsubscribe(mqtt_client_handle_t mqtt_client, const char *topic)
{
	return mqtt_unsubscribe(mqtt_client->client, topic, __mqtt_unsub_cb, mqtt_client);
}


int mqttc_publish(mqtt_client_handle_t mqtt_client,
							const char *topic,
                            const char *data,
							int len,
							int qos,
							int retain)
{
	return mqtt_publish(mqtt_client->client, topic, data, len, qos, retain, __mqtt_pub_cb, mqtt_client);
}

mqtt_client_handle_t mqttc_init(const mqtt_client_config_t *config)
{
    esp_event_loop_args_t no_task_loop = {
         .queue_size = MQTT_EVENT_QUEUE_SIZE,
         .task_name = NULL,
    };

	struct mqtt_client *client = malloc(sizeof(struct mqtt_client));
	if (!client) {
		return NULL;
	}
	memset(client, 0, sizeof(struct mqtt_client));
	client->client = mqtt_client_new();

	if (!config->loop_handler) {
	    esp_event_loop_create(&no_task_loop, &client->loop_handler);
	    client->loop_internal = 1;
	} else {
		client->loop_handler = config->loop_handler;
	}

    //xTaskCreate(client_refresher, (char*)"client_ref", config->task.stack_size,  client, config->task.priority, &client->client_task);

    mqtt_set_inpub_callback(client->client, __mqtt_incoming_subscribed_cb, __mqtt_incoming_data_cb, client);

    return client;
}

int mqttc_deinit(mqtt_client_handle_t mqtt_client)
{
    mqtt_client->runing = 0;
    if (mqtt_client->loop_internal) {
    	esp_event_loop_delete(mqtt_client->loop_handler);
    }
    mqtt_client_free(mqtt_client->client);
    mqtt_client->client = NULL;
    free(mqtt_client);
	return 0;
}
