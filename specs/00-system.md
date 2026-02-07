# System: USB UVC MJPEG → SoftAP → HTTP MJPEG stream

## Goal
Implement firmware for EVK-QCC748M-2-01-0-AA that:
- Enumerates a USB UVC webcam in USB host mode.
- Negotiates MJPEG capture at 640x480 (preferred) and streams to one Wi-Fi client over the device's own SoftAP.
- Provides an HTTP MJPEG stream endpoint at ~10 fps.

## Target hardware
- Board: EVK-QCC748M-2-01-0-AA (QCC748M family with PSRAM + flash and USB support).
- Required peripherals:
  - USB host port capable of powering a webcam (VBUS).
  - UART console for logs and CLI.
  - Wi-Fi radio in AP mode.

## Constraints
- One connected streaming client at a time.
- Target: 10 fps output pacing (drop frames to maintain pacing).
- Target: 640x480 requested resolution (if the camera cannot do this in MJPEG, choose nearest supported MJPEG mode and still cap output at 10 fps).
- "Pass-through MJPEG": do NOT decode and re-encode JPEG frames.
- Must run on FreeRTOS within QCCSDK-QCC74x.

## Non-goals
- Multiple concurrent streaming clients.
- TLS/HTTPS.
- RTSP.
- Audio capture/streaming.
- Any video re-encoding/transcoding.

## High-level architecture (required, but implementation details are flexible)
- USB capture component:
  - Produces (jpeg_bytes, jpeg_len, timestamp) into a bounded queue/buffer pool.
- Streaming server component:
  - Accepts a single client and drains frames from the queue.
  - Enforces 10 fps pacing by dropping stale frames or waiting.
- Wi-Fi SoftAP component:
  - Starts SoftAP + DHCP early in boot.
- Observability component:
  - Emits periodic metrics and supports basic CLI commands for debug.

## Success criteria
- With a typical UVC MJPEG webcam connected, and a phone/laptop connected to the SoftAP:
  - /stream renders moving video in a browser.
  - Stream output is ~10 fps (±20% acceptable) for at least 10 minutes without a crash.
  - Unplug/replug webcam recovers without reboot (stream resumes after camera is reattached).
  - Disconnect/reconnect client recovers without reboot.
