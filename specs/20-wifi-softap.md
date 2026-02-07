# Wi-Fi SoftAP

## Scope
This spec defines device-side Wi-Fi AP behavior and IP addressing needed for streaming.

## Requirements

### Boot behavior
- SoftAP must start automatically during boot.
- DHCP server must be started so a client can obtain an IPv4 address.

### Addressing
- Default AP IP: 192.168.2.1/24
- Default DHCP range: 192.168.2.100 - 192.168.2.200 (or closest supported by SDK)

### SSID/security
- Default SSID: QCC748M-CAM
- Default security: WPA2-PSK (or best available WPA mode in SDK)
- Default password: change-me-please
- Firmware must make SSID/password build-time configurable via a single header or Kconfig-like setting.

### Client limit
- Allow only one connected station at a time.
- If a second station attempts association:
  - Either reject association, or immediately disconnect it once detected.
  - Must log that an extra client was rejected.

### CLI (debug-only; optional if it already exists in SDK)
Provide commands or reuse existing SDK commands to:
- Print AP status (channel, security, stations, IP).
- Start/stop AP (if not always-on).
- Print DHCP leases (if available).

## Acceptance criteria
- A phone/laptop can connect to SSID QCC748M-CAM and obtains an IP via DHCP.
- Client can ping 192.168.2.1.
- If a second device tries to join while one is already connected, it is rejected and logged.

## In-repo references (Ralph should study these before implementing)
- QCCSDK Wi-Fi examples that demonstrate AP mode and DHCP server start.
