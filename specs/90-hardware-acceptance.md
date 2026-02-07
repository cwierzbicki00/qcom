# Hardware acceptance procedure

## Setup
- Board: EVK-QCC748M-2-01-0-AA
- USB webcam: any UVC MJPEG-capable camera (Logitech C170-class is typical).
- Client: laptop/phone with Wi-Fi.

## Flash + console
1. Build firmware (command depends on CHIP/BOARD naming in SDK).
2. Put EVK into flash mode (per EVK instructions).
3. Flash with make flash COMX=<serial port>.
4. Open serial console at 2000000 baud.

## Acceptance test steps
1. Boot device with webcam disconnected:
   - Expect SoftAP logs and "camera unavailable".
2. Connect client to SSID QCC748M-CAM:
   - Client gets DHCP address.
   - Ping 192.168.2.1 succeeds.
3. Plug in webcam:
   - Expect UVC attach logs and selected MJPEG mode.
4. On client, open:
   - http://192.168.2.1/          (HTML page renders)
   - http://192.168.2.1/stream    (video shows motion)
   - http://192.168.2.1/snapshot.jpg (downloads/opens a JPEG)
   - http://192.168.2.1/status.json  (metrics update)
5. Stability:
   - Keep /stream open for 10 minutes; no crash; fps ~10; drops accounted.
6. Recovery:
   - Unplug webcam; stream transitions to camera unavailable; no crash.
   - Replug webcam; stream recovers.

## Logs to capture for debugging (copy/paste)
- Full boot log
- Logs from camera attach through first successful /stream
- A 30s excerpt while streaming (including periodic metrics)
- Any stall/restart messages
