#ifndef _MQTTC_H_
#define _MQTTC_H_

#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include "esp_err.h"
#include "esp_event.h"
#include "mqtt.h"

#ifdef __cplusplus
extern "C" {
#endif


#ifdef CONFIG_MQTT_EVENT_QUEUE_SIZE
#define MQTT_EVENT_QUEUE_SIZE       CONFIG_MQTT_EVENT_QUEUE_SIZE
#else
#define MQTT_EVENT_QUEUE_SIZE       1
#endif

#define MQTT_CLIENTID_MAX_LEN         23
#define MQTT_USERNAME_MAX_LEN         128
#define MQTT_PASSWD_MAX_LEN           128
#define MQTT_WILL_TOPIC_MAX_LEN       128
#define MQTT_WILL_MSG_MAX_LEN         128

typedef enum mqtt_event_id_t {
    MQTT_EVENT_ANY = -1,
    MQTT_EVENT_ERROR =
        0, /*!< on error event, additional context: connection return code, error
            handle from esp_tls (if supported) */
    MQTT_EVENT_CONNECTED,    /*!< connected event, additional context:
                              session_present flag */
    MQTT_EVENT_DISCONNECTED, /*!< disconnected event */
    MQTT_EVENT_SUBSCRIBED,   /*!< subscribed event, additional context:
                                - msg_id               message id
                                - error_handle         `error_type` in case subscribing failed
                                - data                 pointer to broker response, check for errors.
                                - data_len             length of the data for this
                              event
                                */
    MQTT_EVENT_UNSUBSCRIBED, /*!< unsubscribed event, additional context:  msg_id */
    MQTT_EVENT_PUBLISHED,    /*!< published event, additional context:  msg_id */
    MQTT_EVENT_DATA,         /*!< data event, additional context:
                                - msg_id               message id
                                - topic                pointer to the received topic
                                - topic_len            length of the topic
                                - data                 pointer to the received data
                                - data_len             length of the data for this event
                                - current_data_offset  offset of the current data for
                              this event
                                - total_data_len       total length of the data received
                                - retain               retain flag of the message
                                - qos                  QoS level of the message
                                - dup                  dup flag of the message
                                Note: Multiple MQTT_EVENT_DATA could be fired for one
                              message, if it is         longer than internal buffer. In that
                              case only first event contains topic         pointer and length,
                              other contain data only with current data length         and
                              current data offset updating.
                                 */
    /* !< Network Disconnection: If the client is disconnected from the broker when trying to publish.
	Broker Rejection: If the broker rejects the publish request (e.g., due to topic restrictions or authentication issues).
	Invalid Parameters: If the topic or payload is malformed or exceeds size limits.
	QoS Handling Failures: If the acknowledgment for QoS 1 or 2 messages is not received or fails.
	Internal Errors: Memory allocation failures or internal state inconsistencies in the MQTT client.*/
    MQTT_EVENT_PUBLISH_ERROR,

    /* !< Network Issues:
	The client is not connected to the broker when the subscription is attempted.
	Temporary loss of connectivity during the subscription handshake.
Broker Rejection:
	The MQTT broker denies the subscription due to:
	Invalid topic format.
	Unauthorized access (e.g., insufficient permissions).
	Topic filters that are not allowed by the broker's configuration.
Invalid Topic or Parameters:
	Subscribing to a topic with an invalid name or wildcard usage.
	Using an unsupported QoS level.
Client-Side Issues:
	The MQTT client is not properly initialized.
	The client is in an incorrect state (e.g., disconnected or reconnecting).
	Memory allocation failure or internal buffer overflow.
Broker-Specific Limitations:
	Exceeding the maximum number of allowed subscriptions.
	Broker-imposed rate limits or throttling.
Protocol Errors:
	Malformed SUBSCRIBE packet.
	MQTT version mismatch or unsupported features.
*/
    MQTT_EVENT_SUBSCRIBE_ERROR,

    /* !< Invalid Credentials:
	Incorrect username or password.
	Missing credentials when the broker requires them.
Unauthorized Client ID:
	Some brokers restrict access based on the client ID.
	Using a client ID that is not allowed or already in use.
Access Control Restrictions:
	The broker's ACL (Access Control List) denies the client access to the requested topics or actions.
TLS/SSL Certificate Issues:
	Invalid or expired client certificate.
	Missing client certificate when mutual TLS is required.
IP or Network Restrictions:
	The broker is configured to allow connections only from specific IP ranges or networks.
Broker Configuration:
	The broker is set to reject anonymous connections.
	The broker requires authentication but the client is connecting without credentials.
Exceeded Connection Limits:
	The broker has a limit on the number of simultaneous connections per user or IP.
Incorrect MQTT Protocol Version:
	The client is using a version not supported by the broker (e.g., MQTT 5.0 vs 3.1.1).
*/
    MQTT_CONNECTION_REFUSED_NOT_AUTHORIZED,

    /* !< Client Not Connected
	The client attempts to unsubscribe while not connected to the broker.
	Invalid Topic
		The topic provided for unsubscription is malformed or does not conform to MQTT topic syntax.
	Unsubscribing from a Non-Subscribed Topic
		Some brokers may reject unsubscribe requests for topics the client is not currently subscribed to.
	Broker Rejection
		The broker explicitly rejects the unsubscribe request due to:
	Authorization issues (e.g., client lacks permission).
		Internal broker rules or plugin logic.
	Network Issues
		Temporary network failures during the unsubscribe request transmission.
	Protocol Errors
		Malformed UNSUBSCRIBE packet or MQTT protocol version mismatch.
	Client-Side Bugs or State Issues
		The MQTT client is in an inconsistent state (e.g., reconnecting or shutting down).
		Internal memory or buffer issues in the client library.*/
    MQTT_EVENT_UNSUBSCRIBE_ERROR,
} mqtt_event_id_t;

typedef struct mqtt_client_config {
    struct mqtt_task {
        int priority;   /*!< *MQTT* task priority*/
        int stack_size; /*!< *MQTT* task stack size*/
    } task; /*!< FreeRTOS task configuration.*/
    esp_event_loop_handle_t loop_handler;
} mqtt_client_config_t;

typedef struct mqtt_event {
	mqtt_event_id_t event_id;    /*!< *MQTT* event type */
    char *data;                      /*!< Data associated with this event */
    int data_len;                    /*!< Length of the data for this event */
    int total_data_len; /*!< Total length of the data (longer data are supplied
                         with multiple events) */
    int current_data_offset; /*!< Actual offset for the data associated with this
                              event */
    char *topic;             /*!< Topic associated with this event */
    int topic_len; /*!< Length of the topic for this event associated with this
                    event */
    int err;        /*!< *MQTT* event error code */
    int msg_id;    /*!< *MQTT* messaged id of message */
    int session_present; /*!< *MQTT* session_present flag for connection event */
    bool retain; /*!< Retained flag of the message associated with this event */
    int qos;     /*!< QoS of the messages associated with this event */
    bool dup;    /*!< dup flag of the message associated with this event */
} mqtt_event_t;

struct mqtt_client {
	mqtt_client_t *client;
	TaskHandle_t client_task;
	esp_event_loop_handle_t loop_handler;
	struct mqtt_event event;
	uint32_t data_offset;
	bool runing;
	bool loop_internal;
};

typedef struct mqtt_client *mqtt_client_handle_t;

mqtt_client_handle_t mqttc_init(const mqtt_client_config_t *config);

int mqttc_connect(mqtt_client_handle_t mqtt_client, const char *hostname, u16_t port, const struct mqtt_connect_client_info_t *client_info);

int mqttc_disconnect(mqtt_client_handle_t mqtt_client);

int mqttc_subscribe(mqtt_client_handle_t mqtt_client, const char *topic, u8_t qos);

int mqttc_unsubscribe(mqtt_client_handle_t mqtt_client, const char *topic);

int mqttc_publish(mqtt_client_handle_t mqtt_client,
							const char *topic,
                            const char *data,
							int len,
							int qos,
							int retain);

int mqttc_event_register(mqtt_client_handle_t mqtt, mqtt_event_id_t event, esp_event_handler_t event_handler, void *event_handler_arg);

int mqttc_event_unregister(mqtt_client_handle_t mqtt, mqtt_event_id_t event, esp_event_handler_t event_handler);

int mqttc_deinit(mqtt_client_handle_t mqtt_client);

#ifdef __cplusplus
}
#endif //__cplusplus


#endif

