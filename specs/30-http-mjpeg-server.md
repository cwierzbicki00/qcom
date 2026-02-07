# HTTP MJPEG streaming server

## Scope
This spec defines the HTTP interface used by the client to view the camera stream.

## Endpoints

### GET /
Returns a minimal HTML page that:
- Shows connection info (IP address and endpoints).
- Embeds the MJPEG stream using <img src="/stream">.

### GET /stream
- Content-Type: multipart/x-mixed-replace; boundary=frame
- Server continuously pushes frames until client disconnects.
- Each part MUST be formatted exactly as:

  --frame\r\n
  Content-Type: image/jpeg\r\n
  Content-Length: <N>\r\n
  X-Timestamp-Ms: <monotonic_ms>\r\n
  \r\n
  <JPEG BYTES>\r\n

- Pacing:
  - Output target: 10 fps (100 ms period).
  - If frames arrive faster, drop frames.
  - If frames arrive slower, stream as available (no artificial duplication).

### GET /snapshot.jpg
- Returns the most recent JPEG frame once and closes.
- If camera unavailable: return HTTP 503 with text body.

### GET /status.json
Return JSON with:
- camera_attached: bool
- selected_mode: string (format/resolution/fps)
- frames_in: uint64
- frames_dropped: uint64
- frames_sent: uint64
- stream_client_connected: bool
- stream_client_ip: string (if available)
- heap_free_bytes: uint32 (or closest available)
- uptime_ms: uint64

## Connection policy
- Only 1 /stream connection at a time.
- If /stream is already in use:
  - Reject new /stream with HTTP 503.
- /snapshot.jpg and /status.json may still work while streaming.

## Resource constraints
- Must not copy JPEG data more than once per transmitted frame.
- Must not allocate a new buffer per frame for HTTP formatting. Headers must use a small fixed buffer.

## Acceptance criteria
- Browser can render /stream and shows motion.
- VLC/ffplay can render /stream.
- /snapshot.jpg returns a valid JPEG.
- /status.json returns valid JSON and metrics update during streaming.
- Stream runs >= 10 minutes without socket leaks or task growth.

## Required tests/backpressure
- Add at least one host-side test that validates the multipart formatting (boundary + headers + CRLF) for a known fake JPEG buffer.
