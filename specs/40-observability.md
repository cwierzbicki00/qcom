# Observability

## Scope
Defines what must be logged and what metrics must exist to debug performance and failures.

## Logging requirements
On boot:
- Print firmware version + git tag if available.
- Print board/chip identification if available.
- Print SoftAP status: SSID, channel, IP, DHCP on/off.
- Print whether camera is attached at boot.

On camera attach:
- Print VID/PID and selected MJPEG mode.

During run (periodic, every 1s):
- frames_in per second (instant)
- frames_sent per second (instant)
- frames_dropped per second (instant)
- current connected client count (AP + stream)
- heap free (or closest available)

On failure events:
- UVC stall, UVC restart attempts, restart success/failure.
- HTTP client connect/disconnect.
- Wi-Fi station connect/disconnect and MAC.

## CLI/debug commands
Either reuse existing QCCSDK shell or add a minimal command set:
- cam info
- cam start / cam stop
- stream status
- wifi status
- mem stats
