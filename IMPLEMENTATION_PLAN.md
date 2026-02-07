# Implementation Plan: USB UVC MJPEG → SoftAP → HTTP MJPEG Stream

**Target:** EVK-QCC748M (CHIP=qcc743, BOARD=qcc744dk)
**SDK:** QCCSDK-QCC74x tag 2.0.97
**Branch:** usb-mjpeg-stream

---

## Phase 0 — Project Scaffold & Build Verification

### 0.1 Create example directory and build skeleton
- **Spec:** 00-system (overall firmware structure)
- **Files:**
  - NEW `examples/usb_cam_stream/main.c` — entry point
  - NEW `examples/usb_cam_stream/Makefile` — copy from `examples/cherryusb/cherryusb_cli/Makefile`, adjust paths
  - NEW `examples/usb_cam_stream/CMakeLists.txt` — combined component list
  - NEW `examples/usb_cam_stream/proj.conf` — merged config from ap_sta_bridge + cherryusb_cli
  - NEW `examples/usb_cam_stream/usb_config.h` — copy from cherryusb_cli, ensure `CONFIG_USBHOST_MAX_VIDEO_CLASS 1`
  - NEW `examples/usb_cam_stream/flash_prog_cfg.ini` — copy from cherryusb_cli
- **In-repo references:**
  - `examples/cherryusb/cherryusb_cli/Makefile`, `CMakeLists.txt`, `proj.conf`, `usb_config.h`
  - `examples/wifi/ap_sta_bridge/Makefile`, `CMakeLists.txt`, `proj.conf`
- **proj.conf must enable (merged):**
  ```
  CONFIG_FREERTOS 1, CONFIG_TLSF 1, CONFIG_SHELL 1
  CONFIG_LWIP 1, CONFIG_WIFI6 1, CONFIG_RF 1, CONFIG_MBEDTLS 1
  CONFIG_DHCPD 1, CONFIG_PING 1
  CONFIG_CHERRYUSB y, CONFIG_CHERRYUSB_OSAL "freertos"
  CONFIG_CHERRYUSB_HOST y
  CONFIG_VIF_MAX 2, CONFIG_STA_MAX 1
  ```
- **Test:** `make CHIP=qcc743 BOARD=qcc744dk` succeeds with an empty `main()` + `board_init()` + `vTaskStartScheduler()`
- **Risks:** Component config conflicts between WiFi and USB stacks; linker section collisions. Validate that the combined linker script has both `FSymTab` (shell) and USB class sections.

### 0.2 Establish boot sequence skeleton
- **Spec:** 00-system
- **Files:** `examples/usb_cam_stream/main.c`
- **Boot sequence (order matters):**
  1. `board_init()`
  2. Get `uart0`, call `shell_init_with_task(uart0)`
  3. `rfparam_init(0, NULL, 0)`
  4. `tcpip_init(NULL, NULL)`
  5. `wifi_start_firmware_task()` — starts WiFi FW task at priority 16
  6. `vTaskStartScheduler()`
- **WiFi event handler stub:** `wifi_event_handler(uint32_t code)` handling `CODE_WIFI_ON_INIT_DONE` → `wifi_mgmr_init()`
- **In-repo references:**
  - `examples/wifi/ap_sta_bridge/main.c` (boot sequence pattern)
  - `examples/cherryusb/cherryusb_cli/main.c` (USB + shell init)
- **Test:** Firmware boots, shell prompt appears over UART at 2 Mbaud, `help` command works
- **Risks:** None significant — well-trodden SDK pattern.

---

## Phase 1 — Wi-Fi SoftAP + DHCP Server

### 1.1 Auto-start SoftAP on boot
- **Spec:** 20-wifi-softap (auto-start, SSID, security, addressing)
- **Files:**
  - `examples/usb_cam_stream/main.c` — add AP start in `CODE_WIFI_ON_MGMR_DONE` event
  - NEW `examples/usb_cam_stream/wifi_ap.c` / `wifi_ap.h` — SoftAP configuration module
- **Implementation:**
  - In `wifi_event_handler`, on `CODE_WIFI_ON_MGMR_DONE`:
    ```c
    wifi_mgmr_ap_params_t ap = {
        .ssid = "QCC748M-CAM",
        .key = "change-me-please",
        .akm = "wpa2",
        .channel = 6,
        .use_dhcpd = true,
        .ap_ipaddr = inet_addr("192.168.2.1"),
        .ap_mask = inet_addr("255.255.255.0"),
        .start = 100,   // DHCP pool start offset → 192.168.2.100
        .limit = 101,   // Pool size → through 192.168.2.200
    };
    wifi_mgmr_ap_start(&ap);
    ```
  - SSID and password defined as `#define` constants (build-time configurable per spec)
- **In-repo references:**
  - `components/wireless/wifi6/qcc74x_fhost/include/wifi_mgmr_ext.h` — `wifi_mgmr_ap_params_t`, `wifi_mgmr_ap_start()`
  - `components/wireless/wifi6/wifi6_lwip_adapter/cli_al.c` lines 775-868 — `wifi_ap_start` CLI
  - `components/net/lwip/lwip/src/apps/lwip_dhcpd/dhcp_server_raw.c` — `dhcpd_start()`
- **Test:** Phone connects to `QCC748M-CAM`, gets IP in 192.168.2.100-200 range, can `ping 192.168.2.1`
- **Risks:** Channel selection may conflict if regulatory domain restricts it. `use_dhcpd=true` should auto-start DHCP via the AP params struct — verify in `wifi_mgmr_ap_start` implementation.

### 1.2 Enforce single-station limit
- **Spec:** 20-wifi-softap (one client limit, reject second)
- **Files:** `examples/usb_cam_stream/wifi_ap.c`
- **Implementation:**
  - Track connected STA count via `CODE_WIFI_ON_AP_STA_ADD` / `CODE_WIFI_ON_AP_STA_DEL` events
  - On `CODE_WIFI_ON_AP_STA_ADD`: if count > 1, call `wifi_mgmr_ap_sta_delete(mac)` to disconnect the new station and log rejection
  - Alternatively, set `CONFIG_STA_MAX 1` in proj.conf if the SDK enforces it at the MAC layer (needs hardware validation)
- **In-repo references:**
  - `components/wireless/wifi6/qcc74x_fhost/include/wifi_mgmr_ext.h` — STA management API
- **Test:** Connect first device → success. Connect second device → rejected, first stays connected
- **Risks:** SDK may not expose `wifi_mgmr_ap_sta_delete()` or it may be named differently. Must verify API. Fallback: set `CONFIG_STA_MAX 1` and rely on firmware-level rejection.

### 1.3 SoftAP CLI commands (debug)
- **Spec:** 20-wifi-softap (CLI: AP status, DHCP leases), 40-observability (`wifi status`)
- **Files:** `examples/usb_cam_stream/wifi_ap.c`
- **Implementation:**
  - Register `wifi_status` shell command via `SHELL_CMD_EXPORT_ALIAS()` — prints SSID, channel, IP, connected STA count/MAC
  - Leverage existing `wifi_ap_start` / `wifi_ap_stop` CLI commands already in `cli_al.c` (auto-linked when `CONFIG_CLI_CMD_ENABLE` is defined)
- **In-repo references:**
  - `components/wireless/wifi6/wifi6_lwip_adapter/cli_al.c` — existing WiFi CLI commands
  - `components/shell/shell.h` — `SHELL_CMD_EXPORT_ALIAS` macro
- **Test:** `wifi status` prints AP info on console
- **Risks:** None — thin wrapper around existing APIs.

---

## Phase 2 — USB UVC Host Capture Pipeline

### 2.1 MJPEG frame buffer pool
- **Spec:** 10-usb-uvc-capture (bounded buffer pool, no per-frame heap alloc, drop oldest on overflow)
- **Files:**
  - NEW `examples/usb_cam_stream/frame_pool.c` / `frame_pool.h`
- **Implementation:**
  - Use `qcc74x_block_pool` from `components/utils/qcc74x_block_pool/`
  - Allocate pool memory from PSRAM: `__attribute__((section(".psram_noinit"), aligned(64)))`
  - Frame size: 100 KB max per block (covers 640x480 MJPEG)
  - Pool count: 4 frames (400 KB total from PSRAM — QCC748M has 4 MB PSRAM)
  - Frame descriptor struct:
    ```c
    typedef struct {
        uint8_t *data;        // Points into block pool
        uint32_t len;         // Actual JPEG size
        uint32_t timestamp_ms;// xTaskGetTickCount() * portTICK_PERIOD_MS
    } frame_t;
    ```
  - FreeRTOS queue (`xQueueCreate(4, sizeof(frame_t))`) for producer→consumer handoff
  - On overflow (queue full): `xQueueReceive` the oldest frame, free its block, then enqueue new frame (drop-oldest policy)
  - Expose: `frame_pool_init()`, `frame_alloc()`, `frame_free()`, `frame_queue_push()`, `frame_queue_pop()`
- **In-repo references:**
  - `components/utils/qcc74x_block_pool/qcc74x_block_pool.h` — block pool API
  - `examples/qcc74x_block_pool/main.c` — usage example
  - `components/mm/mem.h` — `kmalloc()` with `MM_PSRAM` flag (alternative to static PSRAM section)
- **Test (host-side / compile-time):** Unit test validating: alloc N blocks, free N blocks, alloc N+1 triggers drop-oldest, no double-free
- **Risks:** PSRAM section name may differ on qcc744dk board. Verify linker script `bsp/board/qcc744dk/qcc743_flash.ld` has `.psram_noinit` section. If not, use `kmalloc(size, MM_PSRAM)` at runtime.

### 2.2 UVC host enumeration and format negotiation
- **Spec:** 10-usb-uvc-capture (detect UVC, log VID/PID, negotiate MJPEG 640x480 @ 10fps)
- **Files:**
  - NEW `examples/usb_cam_stream/uvc_capture.c` / `uvc_capture.h`
- **Implementation:**
  - Override `usbh_video_run(struct usbh_video *video_class)` (weak function in `usbh_video.c`)
  - On attach:
    1. Log VID/PID from `video_class->hport->device_desc`
    2. Iterate `video_class->format[]` to find `USBH_VIDEO_FORMAT_MJPEG` (value 1)
    3. Within MJPEG format, find resolution closest to 640x480 per spec selection policy (prefer exact, then nearest ≥320x240 and ≤1280x720)
    4. Call `usbh_video_open(video_class, USBH_VIDEO_FORMAT_MJPEG, width, height, altsetting)`
    5. Note: frame interval is hardcoded to 333333 (30fps) in driver; our streamer will cap at 10fps output
  - Override `usbh_video_stop()` — set `camera_attached = false`, notify streaming server
  - Initialize USB host stack: `usbh_initialize(0, USB_BASE)` in boot sequence
- **In-repo references:**
  - `components/usb/cherryusb/class/video/usbh_video.h` — `struct usbh_video`, format/resolution structures
  - `components/usb/cherryusb/class/video/usbh_video.c` — `usbh_video_open()`, weak `usbh_video_run/stop`
  - `components/usb/cherryusb/class/video/usb_video.h` — UVC descriptor constants
  - `examples/cherryusb/cherryusb_cli/host_demo/usbh_cli.c` — USB host init pattern
  - `examples/cherryusb/cherryusb_cli/usb_config.h` — USB host config defines
- **Test:** Plug in Logitech webcam → console logs VID/PID and "Selected MJPEG 640x480"
- **Risks:**
  - `usbh_video_open()` hardcodes frame interval to 333333 (30fps). If camera doesn't support 30fps, negotiation may fail. May need to patch driver or accept camera's default fps.
  - `altsetting` parameter: must be determined from parsed descriptors. The driver stores endpoint info but the altsetting selection logic needs validation.
  - Some cameras expose multiple alt-settings with different max packet sizes. Need to select appropriate one for bandwidth.

### 2.3 ISO streaming and frame assembly
- **Spec:** 10-usb-uvc-capture (frame delivery, monotonic timestamp)
- **Files:** `examples/usb_cam_stream/uvc_capture.c`
- **Implementation:**
  - In `usbh_video_run()` callback, create a streaming task:
    1. Allocate ISO URB with N packets (e.g., 8-16 packets per URB)
    2. Each packet buffer = `isoin_mps` bytes (typically 512-3072 bytes for high-speed ISO)
    3. Set `urb->complete = uvc_iso_complete_callback`
    4. Submit URB via `usbh_submit_urb()`
  - In ISO complete callback:
    1. Parse UVC payload header (byte 0 = header length, byte 1 bit 0 = FID, bit 1 = EOF)
    2. Accumulate JPEG data into current frame buffer (from frame pool)
    3. On FID toggle or EOF: frame is complete → push to frame queue, alloc new frame buffer
    4. Resubmit URB for continuous streaming
  - Frame timestamp: `xTaskGetTickCount() * portTICK_PERIOD_MS` at frame-complete time
  - Double-buffer URBs: submit 2 URBs alternately to prevent ISO transfer gaps
- **In-repo references:**
  - `components/usb/cherryusb/common/usb_hc.h` — `struct usbh_urb`, `usbh_iso_frame_packet`, `usbh_submit_urb()`
  - `components/usb/cherryusb/class/video/usb_video.h` — UVC payload header format constants
- **Test:** Console logs "Frame #N, size=XXXXX bytes" incrementing continuously
- **Risks:**
  - **Critical:** ISO transfer scheduling on this platform is not well-documented. Need hardware validation that `usbh_submit_urb()` works correctly with ISO endpoints. The SDK may use a software USB host controller (MUSB, DWC2, etc.) — the ISO handling quality varies.
  - UVC payload header parsing: some cameras add PTS/SCR fields that shift data offset. Must parse header length field, not assume fixed 2-byte header.
  - Frame size may exceed 100 KB for high-quality MJPEG. Need to handle truncation gracefully or increase buffer size.

### 2.4 Stall detection and recovery
- **Spec:** 10-usb-uvc-capture (stall >2s → restart, if restart fails → "camera unavailable")
- **Files:** `examples/usb_cam_stream/uvc_capture.c`
- **Implementation:**
  - Watchdog timer: `xTimerCreate()` with 2-second period, reset on each frame complete
  - On timer expiry: log "UVC stall detected", call `usbh_video_close()` + `usbh_video_open()` (restart once)
  - If restart fails: set `camera_state = CAMERA_UNAVAILABLE`, stop ISO transfers
  - On physical re-plug: `usbh_video_run()` fires again → full re-init
- **In-repo references:**
  - FreeRTOS timer API (standard)
  - `components/usb/cherryusb/class/video/usbh_video.c` — `usbh_video_close()`
- **Test:** (hardware only) Block camera lens or disconnect internally → stall logged within 2s
- **Risks:** `usbh_video_close()` + re-`open()` without full USB reset may not work on all cameras. May need full USB port reset via `usbh_hub_port_reset()`.

---

## Phase 3 — HTTP MJPEG Streaming Server

### 3.1 Minimal HTTP server (raw sockets)
- **Spec:** 30-http-mjpeg-server (all four endpoints)
- **Files:**
  - NEW `examples/usb_cam_stream/http_server.c` / `http_server.h`
- **Implementation:**
  - Use POSIX-compatible socket API (proven in `examples/wifi/sta/wifi_tcp/wifi_tcp_server.c`)
  - Listener task: `socket()` → `bind(80)` → `listen(1)` → `accept()` loop
  - On accept: parse first line of HTTP request (`GET /path HTTP/1.x`)
  - Route to handler based on path: `/`, `/stream`, `/snapshot.jpg`, `/status.json`
  - Set `TCP_NODELAY` on streaming socket
  - Reuse fixed header buffers (small static char arrays, ~256 bytes)
- **In-repo references:**
  - `examples/wifi/sta/wifi_tcp/wifi_tcp_server.c` — socket server pattern
  - `examples/peripherals/emac/lwip_http_server/http_server.c` — netconn HTTP pattern
  - `components/net/lwip/lwip/src/include/lwip/sockets.h` — socket API
- **Test:** `curl http://192.168.2.1/` returns HTML (even before camera attached)
- **Risks:** lwIP socket API on this platform may have quirks. Verify `SO_REUSEADDR`, `TCP_NODELAY` are supported. The listen backlog may be limited.

### 3.2 GET / — Landing page
- **Spec:** 30-http-mjpeg-server (minimal HTML with `<img src="/stream">`)
- **Files:** `examples/usb_cam_stream/http_server.c`
- **Implementation:**
  - Static const HTML string (< 512 bytes):
    ```html
    <html><body>
    <h1>QCC748M-CAM</h1>
    <p>IP: 192.168.2.1</p>
    <img src="/stream">
    <p><a href="/snapshot.jpg">Snapshot</a> | <a href="/status.json">Status</a></p>
    </body></html>
    ```
  - Send as `Content-Type: text/html` with `Content-Length`, then close connection
- **Test:** Browser renders page with stream embed
- **Risks:** None — static response.

### 3.3 GET /stream — Multipart MJPEG stream
- **Spec:** 30-http-mjpeg-server (multipart/x-mixed-replace, 10fps pacing, single client)
- **Files:** `examples/usb_cam_stream/http_server.c`
- **Implementation:**
  - Track `stream_client_connected` (atomic bool). If already true → return 503
  - Send response headers:
    ```
    HTTP/1.1 200 OK\r\n
    Content-Type: multipart/x-mixed-replace; boundary=frame\r\n
    Cache-Control: no-cache\r\n
    Connection: close\r\n
    \r\n
    ```
  - Streaming loop:
    1. `frame_queue_pop(&frame, 100ms_timeout)` — get next MJPEG frame
    2. If no frame (camera unavailable), sleep and retry
    3. Enforce 10fps pacing: track `last_send_time`, skip frame if <100ms elapsed
    4. Send part header + JPEG data + CRLF boundary:
       ```
       --frame\r\n
       Content-Type: image/jpeg\r\n
       Content-Length: <N>\r\n
       X-Timestamp-Ms: <ms>\r\n
       \r\n
       <JPEG bytes>\r\n
       ```
    5. On `send()` error (client disconnected): break loop, set `stream_client_connected = false`
    6. Free frame back to pool
  - **Zero-copy path:** Send header from static buffer, then send JPEG data directly from frame pool buffer (two `send()` calls, frame freed after both succeed)
- **In-repo references:**
  - Spec 30 for exact multipart format
- **Test:** Browser shows live video. VLC/ffplay plays `http://192.168.2.1/stream`
- **Risks:**
  - `send()` may block if TCP window is full (client not reading fast enough). Use `SO_SNDTIMEO` to bound blocking time. On timeout, drop the frame and continue.
  - Browser compatibility: some browsers may not handle `multipart/x-mixed-replace` well. Chrome and Firefox are known to work; Safari has issues.

### 3.4 GET /snapshot.jpg — Single frame capture
- **Spec:** 30-http-mjpeg-server (latest frame once, 503 if camera unavailable)
- **Files:** `examples/usb_cam_stream/http_server.c`
- **Implementation:**
  - Maintain a `latest_frame` pointer (atomically updated by capture task on each new frame)
  - On request: if `camera_state != ATTACHED` → return 503
  - Otherwise: copy frame reference, send `Content-Type: image/jpeg` + `Content-Length` + JPEG bytes, close
  - Use a read-write lock or atomic pointer swap to avoid data races with capture task
- **Test:** `curl -o snap.jpg http://192.168.2.1/snapshot.jpg` → valid JPEG file
- **Risks:** Frame may be freed while being sent if capture task recycles it. Need reference counting or snapshot-specific buffer copy.

### 3.5 GET /status.json — Metrics endpoint
- **Spec:** 30-http-mjpeg-server (JSON with camera_attached, selected_mode, counters, heap, uptime)
- **Files:** `examples/usb_cam_stream/http_server.c`
- **Implementation:**
  - `snprintf()` into a small static buffer (~512 bytes)
  - Fields: `camera_attached`, `selected_mode`, `frames_in`, `frames_dropped`, `frames_sent`, `stream_client_connected`, `stream_client_ip`, `heap_free_bytes` (via `xPortGetFreeHeapSize()`), `uptime_ms`
  - All counters maintained as `volatile uint64_t` or `atomic` globals
- **Test:** `curl http://192.168.2.1/status.json` → valid JSON, values update
- **Risks:** None — simple formatting.

### 3.6 Multipart format unit test
- **Spec:** 30-http-mjpeg-server (host-side test for multipart formatting)
- **Files:**
  - NEW `examples/usb_cam_stream/test/test_multipart.c` — host-compilable test
- **Implementation:**
  - Extract multipart header formatting into a pure function
  - Test with known fake JPEG buffer (e.g., 1000 bytes of 0xFF)
  - Verify: boundary present, Content-Type correct, Content-Length matches, CRLF sequences correct
  - Compile and run on host (not cross-compiled): `gcc -o test_multipart test_multipart.c && ./test_multipart`
- **Test:** Host test passes
- **Risks:** None — pure string formatting test.

---

## Phase 4 — Observability & CLI

### 4.1 Boot logging
- **Spec:** 40-observability (firmware version, board ID, SoftAP status, camera status at boot)
- **Files:** `examples/usb_cam_stream/main.c`
- **Implementation:**
  - On boot: `printf("FW: usb-cam-stream built %s %s\r\n", __DATE__, __TIME__)`
  - After AP start event: log SSID, channel, IP
  - Log camera attached/not-attached state
- **Test:** Boot log contains all required fields
- **Risks:** None.

### 4.2 Periodic metrics (1 Hz)
- **Spec:** 40-observability (frames_in/sent/dropped per second, client count, heap free)
- **Files:**
  - NEW `examples/usb_cam_stream/metrics.c` / `metrics.h`
- **Implementation:**
  - FreeRTOS timer firing every 1 second
  - Compute deltas from previous tick for per-second rates
  - `printf()` one-line summary: `[METRICS] in=%u sent=%u drop=%u clients=%u heap=%u\r\n`
- **Test:** Metrics appear on console every second during streaming
- **Risks:** None.

### 4.3 Event logging
- **Spec:** 40-observability (UVC stall/restart, HTTP client connect/disconnect, WiFi STA connect/disconnect)
- **Files:** Spread across `uvc_capture.c`, `http_server.c`, `wifi_ap.c`
- **Implementation:**
  - Each module logs significant events with `printf("[UVC] ...")`, `[HTTP] ...`, `[WIFI] ...` prefixes
  - WiFi events: log MAC address on STA add/del
  - HTTP events: log client IP on connect, reason on disconnect
  - UVC events: log stall, restart attempt, restart result
- **Test:** Console shows all event types during normal operation
- **Risks:** None.

### 4.4 CLI debug commands
- **Spec:** 40-observability (`cam info`, `cam start`, `cam stop`, `stream status`, `wifi status`, `mem stats`)
- **Files:**
  - `examples/usb_cam_stream/uvc_capture.c` — `cam_info`, `cam_start`, `cam_stop`
  - `examples/usb_cam_stream/http_server.c` — `stream_status`
  - `examples/usb_cam_stream/wifi_ap.c` — `wifi_status`
  - `examples/usb_cam_stream/metrics.c` — `mem_stats`
- **Implementation:**
  - All registered via `SHELL_CMD_EXPORT_ALIAS(func, name, desc)`
  - `cam info` → print VID/PID, selected mode, frame count
  - `cam start` / `cam stop` → manual control of ISO streaming
  - `stream status` → print /stream client connected, IP, frames sent
  - `wifi status` → print AP SSID, channel, IP, STA count
  - `mem stats` → `xPortGetFreeHeapSize()`, `xPortGetMinimumEverFreeHeapSize()`, block pool stats
- **In-repo references:**
  - `components/shell/shell.h` — `SHELL_CMD_EXPORT_ALIAS` macro
  - `components/mm/mem.c` — existing `memtrace` command pattern
- **Test:** Each command responds with correct data on console
- **Risks:** None — thin wrappers.

---

## Phase 5 — Integration & Stability

### 5.1 End-to-end integration test
- **Spec:** 90-hardware-acceptance (Tests 1-6)
- **Files:** All modules
- **Test procedure:**
  1. Boot without camera → AP starts, "camera unavailable" logged
  2. Client connects → DHCP address, ping works
  3. Plug in webcam → UVC attach log, MJPEG mode selected
  4. `http://192.168.2.1/` → HTML page renders
  5. `http://192.168.2.1/stream` → live video with motion
  6. `http://192.168.2.1/snapshot.jpg` → valid JPEG
  7. `http://192.168.2.1/status.json` → valid JSON
  8. Stream 10 minutes → no crash, ~10fps, drops accounted
  9. Unplug webcam → "camera unavailable" (no crash)
  10. Replug webcam → stream recovers
- **Risks:** This is all hardware validation. No simulation possible for USB+WiFi.

### 5.2 Memory leak / stability hardening
- **Spec:** 10-usb-uvc-capture (10 min without heap exhaustion), 30-http-mjpeg-server (10 min without socket leaks)
- **Files:** All modules
- **Implementation:**
  - Periodic heap watermark logging (already in metrics)
  - Verify no `malloc()` in hot paths — all frame buffers from pool
  - Verify socket `close()` on every error path
  - Verify frame `frame_free()` on every error path
  - Add `configASSERT()` for pool invariants in debug builds
- **Test:** Heap free bytes stable over 10-minute run
- **Risks:** Subtle leaks in error paths. lwIP PCB leaks if `close()` missed.

---

## Dependency Graph (Build Order)

```
Phase 0.1 (scaffold)
  └─> Phase 0.2 (boot skeleton)
        ├─> Phase 1.1 (SoftAP) ──> Phase 1.2 (STA limit) ──> Phase 1.3 (WiFi CLI)
        ├─> Phase 2.1 (frame pool) ──> Phase 2.2 (UVC enum) ──> Phase 2.3 (ISO stream) ──> Phase 2.4 (stall recovery)
        └─> Phase 3.1 (HTTP server) ──> Phase 3.2 (landing) ──> Phase 3.3 (/stream) ──> Phase 3.4 (/snapshot) ──> Phase 3.5 (/status) ──> Phase 3.6 (unit test)
                                                                      │
Phase 1 + Phase 2 + Phase 3 ──────────────────────────────────────────┘
  └─> Phase 4 (observability)
        └─> Phase 5 (integration + stability)
```

**Parallelism:** Phases 1, 2, and 3.1-3.2 can proceed in parallel after Phase 0. Phase 3.3 (/stream) requires Phase 2 (frame data source). Phase 4 can proceed incrementally alongside Phases 1-3.

---

## Key Risk Register

| # | Risk | Impact | Mitigation |
|---|------|--------|------------|
| R1 | ISO isochronous transfers may not work correctly on this USB host controller | **Blocking** — no video without ISO | Test with `usbh_submit_urb()` on hardware ASAP (Phase 2.3). Check if SDK has a working ISO demo. |
| R2 | `usbh_video_open()` hardcodes 30fps interval; camera may not support it | **High** — negotiation fails | Patch `usbh_video.c` to accept camera's default interval, or add interval parameter. |
| R3 | PSRAM section not available on qcc744dk linker script | **Medium** — can't use static PSRAM alloc | Fallback: `kmalloc(size, MM_PSRAM)` at runtime. Verify PSRAM is initialized in `board_init()`. |
| R4 | Frame size exceeds 100 KB for some cameras/scenes | **Medium** — frame truncation | Increase block size to 150 KB or dynamically size based on negotiated resolution. |
| R5 | `send()` blocks on slow WiFi client, stalling capture pipeline | **Medium** — frame buildup, drops | Decouple with queue. Set `SO_SNDTIMEO`. Drop frames if send would block too long. |
| R6 | Combined WiFi+USB firmware exceeds flash/RAM limits | **Medium** — won't fit | Profile after Phase 0.1. qcc744dk has 4MB flash + 4MB PSRAM — should be sufficient. Strip unused components. |
| R7 | UVC payload header varies by camera (PTS/SCR optional fields) | **Low** — frame assembly corruption | Parse header length field (byte 0) to determine actual data offset. Don't assume 2-byte header. |

---

## File Inventory (New Files)

| File | Purpose |
|------|---------|
| `examples/usb_cam_stream/main.c` | Entry point, boot sequence, WiFi event handler |
| `examples/usb_cam_stream/wifi_ap.c` / `.h` | SoftAP configuration, STA limit enforcement, WiFi CLI |
| `examples/usb_cam_stream/frame_pool.c` / `.h` | MJPEG frame buffer pool (PSRAM-backed) + FreeRTOS queue |
| `examples/usb_cam_stream/uvc_capture.c` / `.h` | UVC host enumeration, format negotiation, ISO streaming, stall recovery |
| `examples/usb_cam_stream/http_server.c` / `.h` | Raw socket HTTP server: /, /stream, /snapshot.jpg, /status.json |
| `examples/usb_cam_stream/metrics.c` / `.h` | Periodic metrics, counters, CLI debug commands |
| `examples/usb_cam_stream/Makefile` | Build wrapper |
| `examples/usb_cam_stream/CMakeLists.txt` | CMake project config |
| `examples/usb_cam_stream/proj.conf` | Component enablement |
| `examples/usb_cam_stream/usb_config.h` | CherryUSB configuration |
| `examples/usb_cam_stream/flash_prog_cfg.ini` | Flash programming config |
| `examples/usb_cam_stream/test/test_multipart.c` | Host-side multipart formatting test |
| `examples/usb_cam_stream/test/test_frame_pool.c` | Host-side frame pool invariant test |
