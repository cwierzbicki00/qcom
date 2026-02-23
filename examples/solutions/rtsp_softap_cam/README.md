# rtsp_softap_cam

Minimal QCC74x example for:
- USB UVC webcam capture (MJPEG)
- Wi-Fi SoftAP (`192.168.2.1`)
- RTSP MJPEG streaming on port `8554`
- HTTP snapshot on port `80` (`/snapshot.jpg`)

The stream URL for VLC is:
- `rtsp://192.168.2.1:8554/`

Snapshot URL:
- `http://192.168.2.1/snapshot.jpg`

First snapshot diagnostics:
- First successful `/snapshot.jpg` request prints one-time base64 dump markers:
  - `SNAPSHOT_JPEG_B64_BEGIN ...`
  - `SNAPSHOT_JPEG_B64:...` (multiple lines)
  - `SNAPSHOT_JPEG_B64_END ...`
- Every snapshot request logs board-side validation details (accept/reject reason,
  JPEG markers, dimensions, head/tail bytes, and CRC32).
- Use `http://192.168.2.1/status.json` to inspect snapshot counters and camera state.

## What this example does

1. Starts Wi-Fi firmware and brings up SoftAP via `wifi_mgmr_ap_start()`.
2. Initializes CherryUSB host and waits for a UVC camera.
3. Configures RTSP (`RTSP_VIDEOFMT_MJPEG`) and registers `set_strm_cb()`.
4. Pulls newest MJPEG frames from UVC and serves them to RTSP clients.
5. Enforces single-station AP policy and single active RTSP stream producer.

## Build and flash (PowerShell)

```powershell
cd C:\Users\cwier\documents\github\qcom\examples\solutions\rtsp_softap_cam

$env:QCC_SDK = "C:\Users\cwier\documents\github\qcom"
$env:PATH = "$env:QCC_SDK\toolchain\windows_x86_64\bin;$env:QCC_SDK\tools\make;$env:QCC_SDK\tools\cmake\bin;$env:QCC_SDK\tools\ninja;$env:PATH"

make CHIP=qcc743 BOARD=qcc744dk
make flash COMX=COM9
```

## Serial console

- Baudrate: `2000000`
- Expected boot logs include `SoftAP SSID`, `SoftAP IP`, `RTSP URL`, `Camera attached`, `Camera streaming`.

Useful CLI commands:
- `wifi_status`
- `cam_info`
- `rtsp_info`

## iPhone VLC test steps

1. Plug USB webcam into EVK USB host port.
2. Boot board with this firmware.
3. On iPhone, join AP SSID shown in `wifi_ap.h` (default `QCC748M-CAM`).
4. Default password is `change-me-please` (change in `wifi_ap.h` if needed).
5. Open VLC app.
6. Tap `Network` -> `Open Network Stream`.
7. Enter: `rtsp://192.168.2.1:8554/`
8. Start playback.

If connection fails:
- Confirm iPhone got DHCP IP in `192.168.2.x`.
- Verify serial shows AP started and camera attached.
- Try reconnecting camera once after boot.
- Ensure only one RTSP client is active.

## Capability envelope (conservative)

What is reliably supported for one client:
1. Format: MJPEG only (UVC MJPEG path)
2. Resolution selection policy: prefers `640x480`, else nearest MJPEG mode in `>=320x240` and `<=1280x720`
3. FPS target: `15`
4. Recommended reliable operating point: `640x480 @ 10-15 fps`, one VLC client

Higher modes like `1280x720` may work depending on webcam compression and scene complexity, but are not guaranteed under SoftAP + USB host load.
