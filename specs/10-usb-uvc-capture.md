# USB UVC capture

## Scope
This spec defines the behavior of the USB camera ingest pipeline:
- Discover and configure a UVC webcam.
- Capture MJPEG frames.
- Provide frames to the rest of the system.

## Requirements

### UVC enumeration
- On USB device attach:
  - Detect that it is a UVC video device.
  - Log vendor ID, product ID, and selected interface/endpoint details.
- On USB detach:
  - Stop capture cleanly.
  - Release buffers/resources.
  - Notify streaming server that camera is unavailable.

### Format negotiation
- Preferred format: MJPEG.
- Preferred resolution: 640x480.
- Preferred fps: 10.
- Selection policy:
  1. Choose MJPEG format first.
  2. Within MJPEG, prefer 640x480 if present.
  3. If 640x480 missing, choose nearest resolution >= 320x240 and <= 1280x720 (bias toward 640x480-equivalent pixel count).
  4. If the camera's fps choices do not include 10, choose the nearest >= 10 if available; else choose the nearest below.
  5. Regardless of camera fps, the streamer will cap output at 10 fps.

### Frame delivery API (internal)
Expose an internal API suitable for a single producer (USB) and single consumer (streamer):
- start_capture()
- stop_capture()
- get_latest_frame() or dequeue_frame()

Each delivered frame MUST include:
- Pointer to JPEG buffer
- Length in bytes
- Monotonic timestamp in milliseconds

### Memory behavior
- Must not allocate/free large JPEG buffers per frame from the heap.
- Must use a bounded buffer pool (N buffers) or a bounded message buffer/ring.
- On overflow, drop frames deterministically:
  - Prefer dropping the oldest queued frame to keep latency low.

### Fault handling
- If UVC streaming stalls (no frames for > 2 seconds):
  - Log a stall event.
  - Attempt to restart UVC streaming once.
  - If restart fails, transition to "camera unavailable" until replugged.

## Acceptance criteria
- With a Logitech-class UVC MJPEG webcam:
  - Camera enumerates and logs a selected MJPEG mode.
  - Frames are observed in logs as arriving (frame count increments).
  - Continuous capture runs for >= 10 minutes without heap exhaustion or watchdog reset.
  - Unplug/replug results in recovery without reboot.

## Internal test/backpressure expectations
- Firmware build must succeed with the app enabled.
- Add at least one "host-side" unit test or compile-time test that validates the frame queue/buffer pool invariants (no double-free, no overflow without drop accounting).

## In-repo references (Ralph should study these before implementing)
- QCCSDK examples for CherryUSB (look for UVC host support and FreeRTOS OSAL usage).
- Any QCCSDK example that already enumerates USB devices and prints descriptors.

## External reference examples (architecture only; not code)
- Espressif usb_stream shows UVC callback-driven delivery and multi-task internal handling.
- Realtek UVC example shows selecting MJPEG 640x480 with a requested fps.
- NXP host_video_camera_freertos shows the "enumerate camera then consume frames" pattern.
