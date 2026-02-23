#ifndef RTSP_BRIDGE_H
#define RTSP_BRIDGE_H

/* Start/stop RTSP server bound to the UVC MJPEG capture pipeline. */
int rtsp_bridge_start(void);
void rtsp_bridge_stop(void);

#endif /* RTSP_BRIDGE_H */
