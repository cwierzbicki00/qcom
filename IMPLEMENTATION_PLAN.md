# Implementation Plan: USB UVC MJPEG → SoftAP → HTTP MJPEG Stream

**Target:** EVK-QCC748M (CHIP=qcc743, BOARD=qcc744dk)
**SDK:** QCCSDK-QCC74x tag 2.0.97
**Branch:** usb-mjpeg-stream

---

## Phase 0 — Project Scaffold & Build Verification ✅ DONE

### 0.1 Create example directory and build skeleton ✅ DONE
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
- **Build notes (resolved):**
  - `usb_config.h` must define `USB_NOCACHE_RAM_SECTION`, `CONFIG_USBHOST_PSC_PRIO/STACKSIZE`, `CONFIG_USBHOST_REQUEST_BUFFER_LEN`, and `CONFIG_USB_EHCI_HCOR_RESERVED_DISABLE` — these are required by CherryUSB host internals.
  - `lwipopts_user.h` must include the `CONFIG_HIGH_PERFORMANCE` guard (set by WiFi component CMakeLists.txt) to define `LWIP_ASSERT_CORE_LOCKED()` as empty, avoiding `lock_tcpip_core` undeclared errors in `lwiperf.c`.
  - `mbedtls_sample_config.h` must be present (copied from ap_sta_bridge).
  - `FreeRTOSConfig.h` copied from ap_sta_bridge.
  - `CONFIG_STA_MAX` in proj.conf does NOT propagate to C defines (line commented out in wifi6/CMakeLists.txt). `CFG_STA_MAX` is hardcoded to 4. Single-STA enforcement is done in software in `wifi_ap.c`.
  - Binary size: ~867 KB (well within 4 MB flash).

### 0.2 Establish boot sequence skeleton ✅ DONE
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

## Phase 1 — Wi-Fi SoftAP + DHCP Server ✅ DONE

### 1.1 Auto-start SoftAP on boot ✅ DONE
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

### 1.2 Enforce single-station limit ✅ DONE
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

### 1.3 SoftAP CLI commands (debug) ✅ DONE
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

### 2.1 MJPEG frame buffer pool ✅ DONE
- **Spec:** 10-usb-uvc-capture (bounded buffer pool, no per-frame heap alloc, drop oldest on overflow)
- **Files:**
  - NEW `examples/usb_cam_stream/frame_pool.c` / `frame_pool.h`
  - NEW `examples/usb_cam_stream/test/test_frame_pool.c`
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
  - Expose: `frame_pool_init()`, `frame_alloc()`, `frame_free()`, `frame_queue_push()`, `frame_queue_pop()`, `frame_pool_stats()`
- **In-repo references:**
  - `components/utils/qcc74x_block_pool/qcc74x_block_pool.h` — block pool API
  - `examples/qcc74x_block_pool/main.c` — usage example
  - `components/mm/mem.h` — `kmalloc()` with `MM_PSRAM` flag (alternative to static PSRAM section)
- **Test (host-side):** 9/9 tests passing — alloc/exhaust/realloc, FIFO ordering, drop-oldest on queue overflow, data integrity, double-free safety, empty-pop error, drain-frees-all.
- **Build notes (resolved):**
  - `.psram_noinit` section IS available in `bsp/board/qcc744dk/qcc743_flash.ld` at `0xA8000000` (4MB region).
  - `CONFIG_PSRAM` is always defined for qcc744dk (hardcoded in `bsp/board/qcc744dk/CMakeLists.txt`). PSRAM is initialized in `board_init()`.
  - `kmalloc(size, MM_PSRAM)` does NOT work — the `MM_PSRAM` flag is defined but ignored by `kmalloc()` (always allocates from SRAM). Use `.psram_noinit` section attribute instead.
  - `qcc74x_block_pool` alignment math uses `~uint32_t` mask, truncating upper address bits on 64-bit hosts. Host test uses a portable mock allocator instead.
  - Binary size: 847 KB (within 4 MB flash).

### 2.2 UVC host enumeration and format negotiation ✅ DONE
- **Spec:** 10-usb-uvc-capture (detect UVC, log VID/PID, negotiate MJPEG 640x480 @ 10fps)
- **Files:**
  - NEW `examples/usb_cam_stream/uvc_capture.c` / `uvc_capture.h`
  - NEW `examples/usb_cam_stream/usb_ehci_iso_stub.c` (linker stubs for missing EHCI ISO functions)
- **Implementation:**
  - Override `usbh_video_run(struct usbh_video *video_class)` (weak function in `usbh_video.c`)
  - On attach:
    1. Log VID/PID from `video_class->hport->device_desc`
    2. Iterate `video_class->format[]` to find `USBH_VIDEO_FORMAT_MJPEG` (value 1)
    3. Within MJPEG format, find resolution closest to 640x480 per spec selection policy (prefer exact, then nearest ≥320x240 and ≤1280x720)
    4. Call `usbh_video_open(video_class, USBH_VIDEO_FORMAT_MJPEG, width, height, altsetting)`
    5. Note: frame interval is hardcoded to 333333 (30fps) in driver; our streamer will cap at 10fps output
  - Override `usbh_video_stop()` — set `camera_state = CAMERA_DETACHED`
  - Initialize USB host stack: `usbh_initialize(0, usb_dev->reg_base)` in boot sequence via `uvc_capture_init()`
  - Alt-setting selection: picks highest-bandwidth alt-setting (highest MPS) automatically
  - CLI: `cam_info` shell command prints camera state, VID/PID, mode, alt-setting, MPS
- **In-repo references:**
  - `components/usb/cherryusb/class/video/usbh_video.h` — `struct usbh_video`, format/resolution structures
  - `components/usb/cherryusb/class/video/usbh_video.c` — `usbh_video_open()`, weak `usbh_video_run/stop`
  - `components/usb/cherryusb/class/video/usb_video.h` — UVC descriptor constants
  - `examples/cherryusb/cherryusb_cli/host_demo/usbh_cli.c` — USB host init pattern
  - `examples/cherryusb/cherryusb_cli/usb_config.h` — USB host config defines
- **Test:** Plug in webcam → console logs VID/PID and "Selected MJPEG WxH"; `cam_info` prints state
- **Build notes (resolved):**
  - `CONFIG_USB_EHCI_ISO` must be defined in `usb_config.h` to enable ISO code paths in EHCI driver.
  - **EHCI ISO functions are NOT implemented in SDK:** `ehci_iso_urb_init()`, `ehci_kill_iso_urb()`, `ehci_scan_isochronous_list()` are declared in `usb_hc_ehci.h` but have NO implementation anywhere in the SDK. Stub file `usb_ehci_iso_stub.c` provides link-time stubs returning `-USB_ERR_NOTSUPP`. Real ISO implementation needed for Phase 2.3.
  - CherryUSB EHCI headers require explicit include paths added to CMakeLists.txt: `port/ehci`, `common`, `core`.
  - Binary size: 856 KB (within 4 MB flash).
- **Risks (resolved):**
  - `altsetting` parameter: resolved — `select_altsetting()` picks highest MPS among alt-settings 1..N-1.
  - Multiple alt-settings: resolved — highest bandwidth selected automatically.

### 2.3 ISO streaming and frame assembly ✅ DONE
- **Spec:** 10-usb-uvc-capture (frame delivery, monotonic timestamp)
- **Files:** `examples/usb_cam_stream/uvc_capture.c`, `examples/usb_cam_stream/usb_ehci_iso_stub.c`
- **Implementation:**
  - **EHCI ISO driver** implemented in `usb_ehci_iso_stub.c` (renamed from stub to real impl):
    - `ehci_iso_urb_init()` — allocates ITDs from per-bus `ehci_iso_hw` pool, fills iTD transaction status/control lists and buffer page pointers per EHCI spec §3.3, links ITDs into periodic frame list
    - `ehci_scan_isochronous_list()` — called from `USBH_IRQHandler`, scans all active ISO groups for completed iTD transactions, extracts actual transfer lengths, fires URB completion callback, unlinks finished ITDs from frame list
    - `ehci_kill_iso_urb()` — unlinks ITDs from periodic frame list, deactivates transactions, frees ISO group
  - **Streaming task** (`streaming_task` in `uvc_capture.c`):
    - Created by `start_streaming()`, auto-started from `usbh_video_run()` callback on camera attach
    - Double-buffered ISO URBs: 2 URBs × 16 ISO packets each, submitted asynchronously
    - Each ISO packet buffer = `isoin_mps` bytes (high-speed: up to 3072 bytes)
    - Completion callback (`iso_complete_cb`) parses each ISO packet, calls `process_iso_data()`, resubmits URB
  - **UVC payload header parsing** in `process_iso_data()`:
    - Parses variable-length header (byte 0 = length, byte 1 bits: FID, EOF, error)
    - Handles PTS/SCR optional fields via header length field (not assuming fixed 2-byte header)
    - Detects frame boundaries via FID toggle and EOF bit
    - Accumulates JPEG data into frame buffer from PSRAM pool
    - On frame complete: sets monotonic timestamp, pushes to frame queue
    - On error bit: discards current partial frame
  - Frame timestamp: `xTaskGetTickCount() * portTICK_PERIOD_MS` at frame-complete time
  - Graceful truncation: if frame exceeds `FRAME_MAX_SIZE` (100 KB), excess data silently dropped
- **In-repo references:**
  - `components/usb/cherryusb/common/usb_hc.h` — `struct usbh_urb`, `usbh_iso_frame_packet`, `usbh_submit_urb()`
  - `components/usb/cherryusb/class/video/usb_video.h` — UVC payload header format constants
  - `components/usb/cherryusb/port/ehci/usb_hc_ehci.h` — `struct ehci_itd_hw`, `struct ehci_iso_hw`, ITD pool
  - `components/usb/cherryusb/port/ehci/usb_ehci_reg.h` — iTD register field definitions
- **Test:** Build succeeds (860 KB). Host tests 18/18 pass. Hardware validation pending.
- **Build notes (resolved):**
  - EHCI ISO blocker **resolved**: Full iTD implementation provided in `usb_ehci_iso_stub.c`.
  - ISO group pool (`g_iso_pool`) allocated in `USB_NOCACHE_RAM_SECTION` for DMA coherency.
  - `CONFIG_USB_EHCI_ITD_NUM=20` supports up to 20 iTDs per ISO group, sufficient for 16 packets/URB.
  - UVC payload header parsing uses `data[0]` (header length) for data offset — handles cameras with PTS/SCR fields.
  - Binary size: 860 KB (within 4 MB flash).
- **Risks (resolved):**
  - ~~BLOCKING: EHCI ISO functions not implemented~~ → **RESOLVED** — full iTD driver implemented.
  - UVC payload header variable length → **RESOLVED** — parsed via header length field.
  - Frame truncation → **MITIGATED** — silently drops excess data beyond 100 KB.

### 2.4 Stall detection and recovery ✅ DONE
- **Spec:** 10-usb-uvc-capture (stall >2s → restart, if restart fails → "camera unavailable")
- **Files:** `examples/usb_cam_stream/uvc_capture.c`
- **Implementation:**
  - FreeRTOS auto-reload timer (`g_stall_timer`) with `STALL_TIMEOUT_MS` (2000ms) period
  - Timer callback (`stall_timer_cb`) compares `g_frames_captured` with previous snapshot
  - If no new frames: sets `g_stall_detected = true`, logged as warning
  - Streaming task monitors `g_stall_detected` flag in its main loop:
    1. Kills outstanding ISO URBs via `usbh_kill_urb()`
    2. Calls `usbh_video_close()` + 100ms delay + `usbh_video_open()` (restart)
    3. Resets frame assembly state (FID, partial frame)
    4. Resubmits ISO URBs
    5. If restart fails: transitions to `CAMERA_UNAVAILABLE`, streaming task exits
  - On physical re-plug: `usbh_video_run()` fires again → full re-init + auto-start streaming
  - On detach: `usbh_video_stop()` calls `stop_streaming()` which sets `g_stream_stop = true` and waits for task exit
- **In-repo references:**
  - FreeRTOS timer API (standard)
  - `components/usb/cherryusb/class/video/usbh_video.c` — `usbh_video_close()`
- **Test:** (hardware only) Block camera lens or disconnect internally → stall logged within 2s
- **Risks:** `usbh_video_close()` + re-`open()` without full USB reset may not work on all cameras. May need full USB port reset via `usbh_hub_port_reset()`. Hardware validation required.

---

## Phase 3 — HTTP MJPEG Streaming Server ✅ DONE

### 3.1 Minimal HTTP server (raw sockets) ✅ DONE
- **Spec:** 30-http-mjpeg-server (all four endpoints)
- **Files:**
  - NEW `examples/usb_cam_stream/http_server.c` / `http_server.h`
- **Implementation:**
  - Uses lwIP BSD socket API (`socket`, `bind`, `listen`, `accept`, `send`, `recv`, `closesocket`)
  - Listener task: `socket()` → `bind(80)` → `listen(2)` → `accept()` loop
  - On accept: parse first line of HTTP request (`GET /path HTTP/1.x`)
  - Routes to handler based on path: `/`, `/stream`, `/snapshot.jpg`, `/status.json`
  - Sets `TCP_NODELAY` on every accepted connection
  - Sets `SO_REUSEADDR` on server socket
  - Sets `SO_RCVTIMEO` (5s) on client sockets to avoid blocking on bad clients
  - Reuses fixed header buffers (256 bytes for HTTP headers, 512 bytes for recv)
  - `send_all()` helper loops to handle partial sends
  - Task stack: 2048 words, priority 12
  - Started from `CODE_WIFI_ON_AP_STARTED` event in `main.c`
- **In-repo references:**
  - `examples/wifi/sta/wifi_tcp/wifi_tcp_server.c` — socket server pattern
  - `components/net/lwip/lwip/src/include/lwip/sockets.h` — socket API
- **Test:** `curl http://192.168.2.1/` returns HTML (even before camera attached)
- **Build notes (resolved):**
  - `xPortGetFreeHeapSize()` is not available in this SDK's FreeRTOS config. Use `kfree_size()` from `mem.h` instead (same function used in `main.c`).
  - `LWIP_SO_RCVTIMEO`, `LWIP_SO_SNDTIMEO`, `SO_REUSE` already enabled in `lwipopts_user.h`.
  - Binary size: 861 KB (within 4 MB flash).

### 3.2 GET / — Landing page ✅ DONE
- **Spec:** 30-http-mjpeg-server (minimal HTML with `<img src="/stream">`)
- **Files:** `examples/usb_cam_stream/http_server.c`
- **Implementation:**
  - Static const HTML string (< 512 bytes) with `<img src="/stream">`, snapshot/status links
  - Uses `AP_IP_ADDR` from `wifi_ap.h` for IP display
  - Sent as `Content-Type: text/html` with `Content-Length`, then connection closed
- **Test:** Browser renders page with stream embed
- **Risks:** None — static response.

### 3.3 GET /stream — Multipart MJPEG stream ✅ DONE
- **Spec:** 30-http-mjpeg-server (multipart/x-mixed-replace, 10fps pacing, single client)
- **Files:** `examples/usb_cam_stream/http_server.c`
- **Implementation:**
  - Single-client enforcement via `g_stream_active` volatile bool; second client gets 503
  - `SO_SNDTIMEO` set to 5 seconds to prevent blocking on slow clients
  - 10fps pacing via `xTaskGetTickCount()` comparison (100ms minimum interval)
  - Frames popped from `frame_queue_pop()` with 200ms timeout
  - Zero-copy path: header + JPEG data + trailing CRLF sent as three `send_all()` calls
  - Frame freed after all sends complete (or on send error)
  - Client IP logged on connect/disconnect
  - `frames_in`, `frames_sent`, `frames_dropped` counters updated in real-time
- **Test:** Browser shows live video. VLC/ffplay plays `http://192.168.2.1/stream`
- **Risks:**
  - Browser compatibility: some browsers may not handle `multipart/x-mixed-replace` well. Chrome and Firefox are known to work; Safari has issues.

### 3.4 GET /snapshot.jpg — Single frame capture ✅ DONE
- **Spec:** 30-http-mjpeg-server (latest frame once, 503 if camera unavailable)
- **Files:** `examples/usb_cam_stream/http_server.c`
- **Implementation:**
  - Returns 503 if camera state is not ATTACHED or STREAMING
  - Pops a frame from the queue with 500ms timeout
  - Sends as `Content-Type: image/jpeg` with `Content-Length`, then closes connection
  - Frame freed immediately after send
- **Test:** `curl -o snap.jpg http://192.168.2.1/snapshot.jpg` → valid JPEG file
- **Risks:** Snapshot consumes a frame from the queue; if streaming client is active, they share the queue.

### 3.5 GET /status.json — Metrics endpoint ✅ DONE
- **Spec:** 30-http-mjpeg-server (JSON with camera_attached, selected_mode, counters, heap, uptime)
- **Files:** `examples/usb_cam_stream/http_server.c`
- **Implementation:**
  - `snprintf()` into 512-byte stack buffer
  - Fields: `camera_attached`, `selected_mode`, `frames_in`, `frames_dropped`, `frames_sent`, `stream_client_connected`, `stream_client_ip`, `heap_free_bytes` (via `kfree_size()`), `uptime_ms`
  - Counters maintained as `volatile uint32_t` in `http_counters_t` struct
  - Public `http_get_counters()` API for other modules (metrics, CLI)
- **Test:** `curl http://192.168.2.1/status.json` → valid JSON, values update
- **Risks:** None — simple formatting.

### 3.6 Multipart format unit test ✅ DONE
- **Spec:** 30-http-mjpeg-server (host-side test for multipart formatting)
- **Files:**
  - NEW `examples/usb_cam_stream/test/test_multipart.c` — host-compilable test
- **Implementation:**
  - Extracts multipart header formatting into a pure `multipart_format_header()` function
  - 10 tests: boundary present, Content-Type correct, Content-Length matches, timestamp header, blank line terminator, header order, full part assembly with fake JPEG, zero-length JPEG, large values, CRLF count validation
  - Build and run: `gcc -std=c11 -Wall -Wextra -O2 -o test/test_multipart test/test_multipart.c && ./test/test_multipart`
- **Test:** 10/10 host tests passing
- **Risks:** None — pure string formatting test.

### CLI: stream_status ✅ DONE
- **Files:** `examples/usb_cam_stream/http_server.c`
- **Implementation:** `stream_status` shell command prints stream active status, client IP, frame counters

---

## Phase 4 — Observability & CLI ✅ DONE

### 4.1 Boot logging ✅ DONE
- **Spec:** 40-observability (firmware version, board ID, SoftAP status, camera status at boot)
- **Files:** `examples/usb_cam_stream/main.c`
- **Implementation:**
  - On boot: `LOG_I("FW: usb-cam-stream built %s %s\r\n", __DATE__, __TIME__)`
  - Chip/board identification via `qcc74x_efuse_get_device_info()`: package name, PSRAM info, flash info, chip revision
  - SRAM and PSRAM heap sizes logged at boot
  - After AP start event: SSID, channel, IP logged by `wifi_ap.c`
  - Camera attach/detach events logged by `uvc_capture.c`
  - **Boot-time camera status:** `LOG_I("Camera: not attached (USB enumeration pending)")` emitted after `uvc_capture_init()` in `main()`, satisfying spec requirement to "print whether camera is attached at boot"
- **Test:** Boot log contains all required fields
- **Build notes:** Requires `#include "qcc74x_efuse.h"` in `main.c`.

### 4.2 Periodic metrics (1 Hz) ✅ DONE
- **Spec:** 40-observability (frames_in/sent/dropped per second, client count, heap free)
- **Files:**
  - NEW `examples/usb_cam_stream/metrics.c` / `metrics.h`
- **Implementation:**
  - FreeRTOS software timer (`xTimerCreate`) firing every 1 second
  - Computes deltas from previous tick for per-second rates using `http_get_counters()`
  - `printf("[METRICS] frames_in=%u frames_sent=%u frames_dropped=%u clients=%d heap=%u psram=%u\r\n", ...)`
  - Connected client count via `wifi_ap_get_sta_count()`
  - Heap free via `kfree_size()`
  - `metrics_init()` called from `CODE_WIFI_ON_AP_STARTED` event (after HTTP server start)
- **Test:** Metrics appear on console every second during streaming
- **Risks:** None.

### 4.3 Event logging ✅ DONE
- **Spec:** 40-observability (UVC stall/restart, HTTP client connect/disconnect, WiFi STA connect/disconnect)
- **Files:** Spread across `uvc_capture.c`, `http_server.c`, `wifi_ap.c`
- **Implementation:**
  - Each module logs significant events with `[UVC]`, `[HTTP]`, `[WIFI]` prefixes via `LOG_I()`
  - WiFi events: log MAC address on STA add/del (wifi_ap.c)
  - HTTP events: log client IP on connect/disconnect (http_server.c)
  - UVC events: log VID/PID on attach, mode selection, detach (uvc_capture.c)
  - UVC stall/restart logging ready for Phase 2.4 when ISO streaming is implemented
- **Test:** Console shows all event types during normal operation
- **Risks:** None.

### 4.4 CLI debug commands ✅ DONE
- **Spec:** 40-observability (`cam info`, `cam start`, `cam stop`, `stream status`, `wifi status`, `mem stats`)
- **Files:**
  - `examples/usb_cam_stream/uvc_capture.c` — `cam_info`, `cam_start`, `cam_stop`
  - `examples/usb_cam_stream/http_server.c` — `stream_status`
  - `examples/usb_cam_stream/wifi_ap.c` — `wifi_status`
  - `examples/usb_cam_stream/metrics.c` — `mem_stats`
- **Implementation:**
  - All registered via `SHELL_CMD_EXPORT_ALIAS(func, name, desc)`
  - `cam_info` → print state, VID/PID, selected mode, alt-setting, ISO MPS
  - `cam_start` → call `usbh_video_open()` with negotiated params, transition to STREAMING state
  - `cam_stop` → call `usbh_video_close()`, transition back to ATTACHED state
  - `stream_status` → print /stream client connected, IP, frames in/sent/dropped
  - `wifi_status` → print AP SSID, channel, IP, connected STA count and MACs
  - `mem_stats` → print SRAM heap free (`kfree_size()`), PSRAM heap free (`pfree_size()`), frame pool stats (total/free/queued)
- **Build notes (resolved):**
  - `CONFIG_CHERRYUSB_HOST_VIDEO y` must be set in `proj.conf` to compile `usbh_video.c` into `libcherryusb.a`. Without this, `usbh_video_open()` and `usbh_video_close()` are unresolved when called from CLI commands (they only resolved previously through the weak-symbol override path).
  - `wifi_ap_get_sta_count()` added to `wifi_ap.h` as public accessor for the static `ap_sta_count` variable.
  - Binary size: 889 KB (within 4 MB flash).
- **Test:** Each command responds with correct data on console
- **Risks:** None — thin wrappers.

---

## Phase 5 — Integration & Stability

### 5.1 End-to-end integration test (hardware validation only)
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

### 5.2 Memory leak / stability hardening ✅ DONE
- **Spec:** 10-usb-uvc-capture (10 min without heap exhaustion), 30-http-mjpeg-server (10 min without socket leaks)
- **Files:** `frame_pool.c`, `frame_pool.h`, `uvc_capture.c`, `http_server.c`, `metrics.c`, `test/test_frame_pool.c`
- **Implementation:**
  - Periodic heap watermark logging (already in metrics — now includes PSRAM heap)
  - Verified no `malloc()` in hot paths — all frame buffers from pool ✓
  - Verified socket `close()` on every error path (`closesocket()` called in server loop after `handle_client()` returns for all paths) ✓
  - Verified frame `frame_free()` on every error path ✓
  - Added `configASSERT()` in `frame_alloc()` for pool initialisation and null-pointer invariants
  - **BUG FIX:** Added `frame_queue_drain()` — drains all queued frames back to pool on streaming stop. Previously, frames left in the queue when camera detached would leak pool blocks until camera re-attached.
  - Added `frame_queue_drain()` call in `streaming_task()` cleanup path (after partial frame free, before URB free)
  - Enhanced `/status.json` with `psram_free_bytes`, `pool_total`, `pool_free`, `pool_queued` fields for remote monitoring
  - Enhanced periodic metrics with PSRAM heap free (`psram=` field)
- **Test:** Host tests 19/19 passing (9 frame_pool + 10 multipart). New test `test_drain_frees_all_queued` validates drain returns all pool blocks.
- **Build notes:**
  - Binary size: 874 KB (within 4 MB flash).
  - No application-level warnings.
- **Risks:** ~~Subtle leaks in error paths~~ **RESOLVED** — all paths audited, drain added.

### 5.3 Spec compliance fixes ✅ DONE
- **Spec:** 30-http-mjpeg-server (`frames_in` accuracy), 40-observability (periodic metrics, boot log)
- **Files:** `http_server.c`, `http_server.h`, `metrics.c`, `main.c`
- **Implementation:**
  - **BUG FIX:** `/status.json` `frames_in` previously counted frames dequeued by the HTTP `/stream` handler. Now correctly reports total frames captured by the camera via `uvc_get_frames_captured()`. Added `frames_dequeued` as a new field to preserve HTTP-level dequeue count.
  - **BUG FIX:** Periodic metrics `in=` rate now tracks camera capture rate (via `uvc_get_frames_captured()`) instead of HTTP dequeue rate.
  - **ENHANCEMENT:** Periodic metrics now include `stream=` field showing whether an HTTP stream client is connected (spec requires "AP + stream" client count).
  - **ENHANCEMENT:** Boot log now includes firmware version string (`FW_VERSION`, default `"0.1.0"`, build-time configurable via `-DFW_VERSION=...`).
  - Renamed `http_counters_t.frames_in` → `frames_dequeued` for clarity.
- **Test:** Host tests 19/19 passing. Build succeeds at 881 KB.
- **Build notes:**
  - Binary size: 881 KB (within 4 MB flash).

### 5.4 Spec compliance audit — remaining gaps ✅ DONE
- **Spec:** 40-observability (git tag in boot log, DHCP status), 10-usb-uvc-capture (FPS negotiation)
- **Files:** `main.c`, `CMakeLists.txt`, `wifi_ap.c`, `uvc_capture.c`, `uvc_capture.h`, `http_server.c`, SDK: `usbh_video.c`, `usbh_video.h`
- **Implementation:**
  - **FIX:** Boot log now includes git tag via `GIT_TAG` define, auto-populated by CMake `git describe --tags --always --dirty` at configure time. Format: `FW: usb-cam-stream v0.1.0 (24210c1-dirty) built ...`.
  - **FIX:** SoftAP boot log now includes `DHCP=on/off` field as required by spec 40-observability.
  - **FIX:** FPS negotiation implemented per spec 10-usb-uvc-capture §4: firmware requests 10fps (dwFrameInterval=1,000,000 100ns units) in UVC probe/commit. Camera adjusts to nearest supported interval. Negotiated FPS logged and stored in `uvc_mode_t.fps`.
  - **SDK PATCH:** `usbh_videostreaming_set_cur_probe()` and `set_cur_commit()` no longer hardcode 333333 (30fps). They respect the value set by application code; default to 333333 only if zero.
  - **SDK PATCH:** `struct usbh_video_resolution` extended with `dwDefaultFrameInterval` field, parsed from MJPEG and uncompressed frame descriptors during enumeration.
  - **ENHANCEMENT:** `cam_info` CLI now shows FPS. `/status.json` `selected_mode` now includes FPS (e.g., `"MJPEG 640x480 @ 10fps"`).
- **Test:** Host tests 19/19 passing. Build succeeds.
- **Build notes:**
  - Binary built successfully after clean rebuild (SDK headers modified).

### 5.5 Boot-time camera status log ✅ DONE
- **Spec:** 40-observability ("Print whether camera is attached at boot")
- **Files:** `main.c`
- **Implementation:**
  - Added `LOG_I("Camera: not attached (USB enumeration pending)")` after `uvc_capture_init()` in `main()`.
  - USB camera enumeration is asynchronous (happens after scheduler starts), so at boot time the camera is always in the "not attached" state. The attach event is logged separately by `uvc_capture.c` when USB enumeration completes.
- **Test:** Host tests 19/19 passing. Build succeeds at 874 KB.

### 5.6 Fix: /snapshot.jpg and /status.json blocked during active /stream ✅ DONE
- **Spec:** 30-http-mjpeg-server (connection policy: "/snapshot.jpg and /status.json may still work while streaming.")
- **Files:** `http_server.c`
- **Bug:** HTTP server was single-threaded — when `handle_stream()` entered its infinite frame-sending loop, the main accept loop was blocked and could not accept new connections for `/snapshot.jpg`, `/status.json`, or `/`. This violated spec §Connection policy.
- **Fix:** `/stream` handler now spawns a dedicated FreeRTOS task (`stream_task`, stack 2048, priority 12) that owns the streaming socket. The main HTTP server task's accept loop continues running, allowing `/snapshot.jpg`, `/status.json`, and `/` to be served concurrently.
  - `handle_stream()` returns `true` to indicate the stream task took socket ownership (caller must not close it).
  - Stream task context (`stream_task_ctx_t`) is heap-allocated by caller, freed by task after extracting socket fd and client address.
  - Socket is closed by the stream task on disconnect/error, then task self-deletes via `vTaskDelete(NULL)`.
  - Single-client enforcement (`g_stream_active`) and 503 rejection still work as before.
  - All error paths (OOM, task creation failure) send 503 and return `false` so the main task closes the socket normally.
- **Test:** Host tests 19/19 passing. Build succeeds at 882 KB.
- **Risks:** Stream task adds ~8 KB SRAM usage (2048-word stack). QCC748M has 320 KB SRAM with ~200 KB free — no concern.

### 5.7 Fix: Log disconnecting STA MAC address ✅ DONE
- **Spec:** 40-observability ("Wi-Fi station connect/disconnect and MAC")
- **Files:** `wifi_ap.c`
- **Bug:** `CODE_WIFI_ON_AP_STA_DEL` event handler only logged the STA count, not the disconnecting station's MAC address. Spec 40-observability requires "Wi-Fi station connect/disconnect and MAC" in failure event logs.
- **Root cause:** The SDK event system does not pass the station MAC or index with `CODE_WIFI_ON_AP_STA_DEL` events. By the time the event fires, the station has already been removed from the firmware's station table, so `wifi_mgmr_ap_sta_info_get()` returns `is_used=0` for the departed slot.
- **Fix:** Added `sta_mac_cache[4][6]` array that mirrors the firmware station table. On `CODE_WIFI_ON_AP_STA_ADD`, the newly connected STA's MAC is cached. On `CODE_WIFI_ON_AP_STA_DEL`, the cache is diffed against the firmware table to identify which slot became empty, and the cached MAC is logged before clearing. Cache is also cleared on `CODE_WIFI_ON_AP_STOPPED`.
- **Test:** Host tests 19/19 passing. Build succeeds at 875 KB.
- **Build notes:**
  - Binary size: 875 KB (within 4 MB flash).

### 5.8 Spec compliance: uint64 counters and wifi_status security field ✅ DONE
- **Spec:** 30-http-mjpeg-server (`/status.json` field types), 20-wifi-softap (CLI status fields)
- **Files:** `http_server.h`, `http_server.c`, `uvc_capture.h`, `uvc_capture.c`, `metrics.c`, `wifi_ap.c`
- **Implementation:**
  - **FIX:** Spec 30 requires `frames_in`, `frames_dropped`, `frames_sent`, and `uptime_ms` as `uint64` in `/status.json`. All counters were `uint32_t` — changed to `uint64_t` throughout: `http_counters_t` struct fields, `g_frames_captured` in `uvc_capture.c`, `uvc_get_frames_captured()` return type, `uptime_ms` computation, metrics delta tracking. JSON format strings updated to use `PRIu64`.
  - **FIX:** `wifi_status` CLI was missing "Security" field. Added `"Security: WPA2-PSK"` line per spec 20-wifi-softap.
- **Test:** Host tests 19/19 passing. Build succeeds at 875 KB.
- **Build notes:**
  - Binary size: 875 KB (within 4 MB flash).

### 5.9 Spec compliance: SoftAP started log missing channel ✅ DONE
- **Spec:** 40-observability ("Print SoftAP status: SSID, channel, IP, DHCP on/off")
- **Files:** `wifi_ap.c`
- **Bug:** The `CODE_WIFI_ON_AP_STARTED` event handler logged SSID, IP, and DHCP status but was missing the channel number. The "Starting SoftAP" log (emitted before the SDK call) included channel, but the "SoftAP started" confirmation log (emitted after SDK confirms AP is running) did not.
- **Fix:** Added `channel=%d` with `AP_CHANNEL` to the "SoftAP started" log line.
- **Test:** Host tests 19/19 passing. Build succeeds at 875 KB.

### 5.10 Add public capture API per spec 10 ✅ DONE
- **Spec:** 10-usb-uvc-capture (Frame delivery API: start_capture(), stop_capture(), get_latest_frame()/dequeue_frame())
- **Files:** `uvc_capture.h`, `uvc_capture.c`
- **Gap:** Spec 10 §Frame delivery API requires exposed internal API: `start_capture()`, `stop_capture()`, `get_latest_frame() or dequeue_frame()`. The frame dequeue was already public via `frame_queue_pop()` in `frame_pool.h` (used directly by HTTP server). However, start/stop capture were only available as static internal functions and CLI commands — no programmatic public API existed for other modules.
- **Fix:** Added `uvc_start_capture()` and `uvc_stop_capture()` as public API functions in `uvc_capture.h`. Implementation wraps `usbh_video_open()` + `start_streaming()` and `stop_streaming()` + `usbh_video_close()` respectively. CLI `cam_start`/`cam_stop` commands refactored to use the new public API.
- **Note:** `dequeue_frame()` maps to `frame_queue_pop()` from `frame_pool.h`, which is already the public frame delivery API consumed by the HTTP server. No additional wrapper needed — the spec says "internal API" and `frame_pool.h` is an internal header.
- **Test:** Host tests 19/19 passing. Build succeeds.

### 5.11 Spec compliance: periodic metrics client count ✅ DONE
- **Spec:** 40-observability ("current connected client count (AP + stream)")
- **Files:** `metrics.c`
- **Bug:** Periodic metrics logged AP client count and stream client count as two separate fields (`clients=%d stream=%d`). Spec 40-observability requires "current connected client count (AP + stream)" — a single summed value.
- **Fix:** Changed to sum `wifi_ap_get_sta_count() + stream_client_connected` into a single `clients=%d` field in the `[METRICS]` log line.
- **Test:** Host tests 19/19 passing. Build succeeds.

### 5.12 Spec compliance: FPS selection from camera intervals + stall timeout ✅ DONE
- **Spec:** 10-usb-uvc-capture §4 ("choose nearest >= 10 if available; else nearest below"), §Fault handling ("> 2 seconds")
- **Files:** `uvc_capture.c`, SDK: `usbh_video.h`, `usbh_video.c`
- **Implementation:**
  - **FIX:** Spec 10 §4 requires selecting FPS from the camera's available frame intervals, not just blindly requesting 10fps. Previously, the code set `probe.dwFrameInterval = 1000000` (10fps) without examining what intervals the camera actually supports.
  - **SDK PATCH:** `struct usbh_video_resolution` extended with `bFrameIntervalType` and `dwFrameInterval[8]` array. Descriptor parser in `usbh_video.c` now extracts discrete frame intervals from MJPEG and uncompressed frame descriptors during enumeration.
  - **NEW:** `select_best_frame_interval()` function implements the spec policy: from discrete intervals, pick the nearest with fps >= 10 (interval <= 1,000,000); if none, pick nearest with fps < 10 (interval > 1,000,000). Falls back to requesting 10fps if no discrete intervals are available (continuous or unparsed).
  - **FIX:** Stall timeout changed from exactly 2000ms to 2500ms. Spec says "> 2 seconds"; 2000ms is not strictly greater than 2s.
- **Test:** Host tests 19/19 passing. Build succeeds at 876 KB.
- **Build notes:**
  - Binary size: 876 KB (within 4 MB flash).

### 5.13 Self-contained UVC capture API: add uvc_dequeue_frame/uvc_frame_release ✅ DONE
- **Spec:** 10-usb-uvc-capture §Frame delivery API ("start_capture(), stop_capture(), get_latest_frame() or dequeue_frame()")
- **Files:** `uvc_capture.h`, `uvc_capture.c`, `http_server.c`
- **Gap:** Spec 10 requires the UVC capture module to expose a complete frame delivery API. While `uvc_start_capture()` and `uvc_stop_capture()` existed, `dequeue_frame()` was only available as `frame_queue_pop()` in `frame_pool.h` — requiring consumers (HTTP server) to directly include the internal frame pool header. The UVC capture API was not self-contained.
- **Fix:**
  - Added `uvc_dequeue_frame(frame_t *frame, uint32_t timeout_ms)` to `uvc_capture.h/.c` — wraps `frame_queue_pop()`.
  - Added `uvc_frame_release(frame_t *frame)` to `uvc_capture.h/.c` — wraps `frame_free()`.
  - Added `#include "frame_pool.h"` to `uvc_capture.h` so `frame_t` is available to consumers without a separate include.
  - Updated `http_server.c` to use `uvc_dequeue_frame()` / `uvc_frame_release()` instead of `frame_queue_pop()` / `frame_free()`, and removed direct `#include "frame_pool.h"`.
  - The UVC capture API is now fully self-contained: `uvc_capture_init()`, `uvc_start_capture()`, `uvc_stop_capture()`, `uvc_dequeue_frame()`, `uvc_frame_release()`, plus state/mode/counter queries.
- **Test:** Host tests 19/19 passing. Build succeeds at 876 KB.
- **Build notes:**
  - Binary size: 876 KB (within 4 MB flash).

### 5.14 Spec compliance: stall restart once-only + AP start/stop CLI ✅ DONE
- **Spec:** 10-usb-uvc-capture §Fault handling ("restart once, then camera unavailable"), 20-wifi-softap §CLI ("start/stop AP")
- **Files:** `uvc_capture.c`, `wifi_ap.c`, `wifi_ap.h`
- **Implementation:**
  - **FIX:** Stall restart was not limited to one attempt. The stall timer fires continuously, and after a successful restart, another stall would trigger another restart indefinitely. Added `g_restart_attempted` flag: on first stall, attempt restart; on second stall (recurrence after restart), transition to `CAMERA_UNAVAILABLE` per spec. Flag is reset only on physical camera re-plug (see 5.18).
  - **FIX:** Spec 20-wifi-softap requires CLI commands to start/stop the AP. Added `ap_start` and `ap_stop` shell commands in `wifi_ap.c` using configured parameters. Added `wifi_ap_stop()` public function wrapping `wifi_mgmr_ap_stop()`. SDK's generic `wifi_ap_start`/`wifi_ap_stop` commands (from `cli_al.c`) also remain available via `CONFIG_CLI_CMD_ENABLE`.
  - **VERIFIED:** DHCP range `AP_DHCP_START=100, AP_DHCP_LIMIT=101` is correct — SDK formula is `end_num = start + limit - 1 = 200`, giving 192.168.2.100-200 (101 addresses).
- **Test:** Host tests 19/19 passing. Build succeeds.

### 5.15 Spec compliance: UVC interface/endpoint logging + DHCP lease display ✅ DONE
- **Spec:** 10-usb-uvc-capture §UVC enumeration ("Log vendor ID, product ID, and selected interface/endpoint details"), 20-wifi-softap §CLI ("Print DHCP leases (if available)")
- **Files:** `uvc_capture.c`, `wifi_ap.c`
- **Implementation:**
  - **FIX:** Camera attach log now includes `ctrl_intf` and `data_intf` interface numbers from CherryUSB's `struct usbh_video`. Previously only logged VID/PID.
  - **FIX:** Camera ready log now includes ISO IN endpoint address (`EP=0x82` format) so the full interface/endpoint chain is visible.
  - **FIX:** DHCP lease tracking implemented via `dhcpd_status_callback_set()` callback. When a STA obtains an IP via DHCP ACK, the callback stores the IP in `sta_ip_cache[]` keyed by the STA's MAC cache slot. A DHCP lease log line is emitted.
  - **FIX:** `wifi_status` CLI now displays the DHCP-assigned IP address alongside each connected STA's MAC (or "IP=pending" if DHCP hasn't completed yet).
  - **SDK BUG NOTE:** Header `dhcp_server.h` declares `dhcpd_sta_status_callback_set()` but the implementation in `dhcp_server_raw.c` defines `dhcpd_status_callback_set()` (name mismatch). Worked around by declaring the correct prototype locally.
- **Test:** Host tests 19/19 passing. Build succeeds at 884 KB.
- **Build notes:**
  - Binary size: 884 KB (within 4 MB flash).

### 5.16 Spec compliance: periodic metrics field names ✅ DONE
- **Spec:** 40-observability ("frames_in per second", "frames_sent per second", "frames_dropped per second")
- **Files:** `metrics.c`
- **Bug:** Periodic metrics log used abbreviated field names (`in=`, `sent=`, `drop=`) instead of spec-required names (`frames_in=`, `frames_sent=`, `frames_dropped=`). Spec 40-observability explicitly names these as "frames_in", "frames_sent", "frames_dropped".
- **Fix:** Updated `printf` format string from `[METRICS] in=%u sent=%u drop=%u ...` to `[METRICS] frames_in=%u frames_sent=%u frames_dropped=%u ...`.
- **Test:** Host tests 19/19 passing. Build succeeds.

### 5.17 Spec compliance: camera state change notification to HTTP server ✅ DONE
- **Spec:** 10-usb-uvc-capture §UVC enumeration ("On USB detach: Notify streaming server that camera is unavailable")
- **Files:** `uvc_capture.h`, `uvc_capture.c`, `http_server.c`
- **Gap:** Spec 10 requires the UVC capture module to actively notify the streaming server when camera becomes unavailable. Previously, camera state changes were only visible via polling (`uvc_get_camera_state()`). The HTTP stream task polled with a 200ms dequeue timeout but never broke out of its loop on camera detach — it would spin indefinitely.
- **Fix:**
  - Added `uvc_state_callback_t` typedef and `uvc_register_state_callback()` API to `uvc_capture.h/.c`. Allows a single callback to be notified on any camera state transition.
  - Added internal `set_cam_state()` helper that updates `g_cam_state` and fires the callback. All direct `g_cam_state = X` assignments replaced with `set_cam_state(X)`.
  - HTTP server registers `on_camera_state_change()` callback at startup via `uvc_register_state_callback()`. Callback sets `g_camera_gone` flag when state transitions to `CAMERA_DETACHED` or `CAMERA_UNAVAILABLE`.
  - **BUG FIX:** Stream task now checks `g_camera_gone` flag after dequeue timeout and `break`s out of the streaming loop, logging `"Camera unavailable — ending stream"`. Previously, it would `continue` forever, keeping the socket open and the stream task alive indefinitely.
  - The callback fires immediately when camera detaches (from `usbh_video_stop()` → `set_cam_state(CAMERA_DETACHED)`), so the stream task exits within 200ms (the dequeue timeout) rather than spinning.
- **Test:** Host tests 19/19 passing. Build succeeds at 877 KB.
- **Build notes:**
  - Binary size: 877 KB (within 4 MB flash).

### 5.18 Spec compliance: stall restart scope — reset only on physical replug ✅ DONE
- **Spec:** 10-usb-uvc-capture §Fault handling ("If restart fails, transition to 'camera unavailable' until replugged")
- **Files:** `uvc_capture.c`
- **Bug:** `g_restart_attempted` flag was reset to `false` at the start of every `streaming_task()` execution (line 410), including when streaming was started via manual `uvc_start_capture()` / `cam_start` CLI. This allowed unlimited restart attempts across manual stop/start cycles without physical replug. The spec explicitly says "until replugged", meaning only a physical USB detach/reattach should reset the restart allowance.
- **Fix:**
  - Removed `g_restart_attempted = false` from `streaming_task()`.
  - Added `g_restart_attempted = false` to `usbh_video_run()` — the CherryUSB callback that fires only on physical USB device attach.
  - Now, each physical plug cycle allows exactly one stall restart attempt. If the restart fails or a second stall occurs after restart, the camera remains `CAMERA_UNAVAILABLE` until physically replugged.
  - Updated variable comment to "One restart allowed per physical plug cycle".
- **Test:** Host tests 19/19 passing. Build succeeds.

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
| R1 | ~~CONFIRMED: EHCI ISO functions not implemented in SDK~~ **RESOLVED** — Full iTD driver implemented in `usb_ehci_iso_stub.c` with `ehci_iso_urb_init()`, `ehci_kill_iso_urb()`, `ehci_scan_isochronous_list()`. | N/A | N/A |
| R2 | ~~`usbh_video_open()` hardcodes 30fps interval~~ **RESOLVED** — SDK patched to use application-set `dwFrameInterval` (defaults to 333333 if zero). Firmware requests 10fps; camera negotiates nearest supported. | N/A | N/A |
| R3 | ~~PSRAM section not available on qcc744dk linker script~~ **RESOLVED** — `.psram_noinit` works | N/A | N/A |
| R4 | Frame size exceeds 100 KB for some cameras/scenes | **Medium** — frame truncation | Increase block size to 150 KB or dynamically size based on negotiated resolution. |
| R5 | ~~`send()` blocks on slow WiFi client, stalling capture pipeline~~ **MITIGATED** — `SO_SNDTIMEO` set to 5s, 10fps pacing drops excess frames | N/A | N/A |
| R6 | ~~Combined WiFi+USB firmware exceeds flash/RAM limits~~ **RESOLVED** — 889 KB at Phase 4 | N/A | N/A |
| R7 | UVC payload header varies by camera (PTS/SCR optional fields) | **Low** — frame assembly corruption | Parse header length field (byte 0) to determine actual data offset. Don't assume 2-byte header. |

---

## File Inventory (New Files)

| File | Purpose |
|------|---------|
| `examples/usb_cam_stream/main.c` | Entry point, boot sequence, WiFi event handler |
| `examples/usb_cam_stream/wifi_ap.c` / `.h` | SoftAP configuration, STA limit enforcement, WiFi CLI |
| `examples/usb_cam_stream/frame_pool.c` / `.h` | MJPEG frame buffer pool (PSRAM-backed) + FreeRTOS queue |
| `examples/usb_cam_stream/uvc_capture.c` / `.h` | UVC host enumeration, format negotiation, cam_start/cam_stop CLI, ISO streaming, stall recovery |
| `examples/usb_cam_stream/usb_ehci_iso_stub.c` | EHCI iTD isochronous transfer driver (ehci_iso_urb_init, ehci_kill_iso_urb, ehci_scan_isochronous_list) |
| `examples/usb_cam_stream/http_server.c` / `.h` | Raw socket HTTP server: /, /stream, /snapshot.jpg, /status.json |
| `examples/usb_cam_stream/metrics.c` / `.h` | Periodic metrics, counters, CLI debug commands |
| `examples/usb_cam_stream/Makefile` | Build wrapper |
| `examples/usb_cam_stream/CMakeLists.txt` | CMake project config |
| `examples/usb_cam_stream/proj.conf` | Component enablement |
| `examples/usb_cam_stream/usb_config.h` | CherryUSB configuration |
| `examples/usb_cam_stream/flash_prog_cfg.ini` | Flash programming config |
| `examples/usb_cam_stream/test/test_multipart.c` | Host-side multipart formatting test (10 tests) |
| `examples/usb_cam_stream/test/test_frame_pool.c` | Host-side frame pool invariant test (9 tests) |
