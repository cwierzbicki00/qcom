## Build & Flash (QCCSDK-QCC74x)

Assume we are working in a fork/branch of QCCSDK-QCC74x.

### Pin SDK version
Prefer building from a tagged release (example: 2.0.97). If using master, record the commit hash in logs.

### Toolchain PATH
The SDK bundles toolchain and build tools. Before building, ensure PATH includes:
- Windows: `<repo>/toolchain/windows_x86_64/bin`, `<repo>/tools/make`, `<repo>/tools/cmake/bin`, `<repo>/tools/ninja`
- Linux: `<repo>/toolchain/linux_x86_64/bin`, `<repo>/tools/make`, `<repo>/tools/cmake/bin`, `<repo>/tools/ninja`

On this machine (Windows/MINGW64), the toolchain lives at:
- `C:/Users/cwier/documents/github/qcom/toolchain/windows_x86_64/bin`
- `C:/Users/cwier/documents/github/qcom/tools/make`
- `C:/Users/cwier/documents/github/qcom/tools/cmake/bin`
- `C:/Users/cwier/documents/github/qcom/tools/ninja`

Set PATH before building:
```bash
export QCC_SDK="C:/Users/cwier/documents/github/qcom"
export PATH="$QCC_SDK/toolchain/windows_x86_64/bin:$QCC_SDK/tools/make:$QCC_SDK/tools/cmake/bin:$QCC_SDK/tools/ninja:$PATH"
```

### Build an example app
QCCSDK examples are built from within the example directory with make.

Confirmed CHIP/BOARD/COMX for this EVK:
- CHIP=qcc743
- BOARD=qcc744dk
- COMX=COM9

Pattern:
- cd examples/<category>/<example>
- make CHIP=qcc743 BOARD=qcc744dk

For CherryUSB (USB host/device): `make CHIP=qcc743 BOARD=qcc744dk`
For Wi-Fi AP: see `examples/wifi/ap_sta_bridge/` for AP mode patterns

Build verified working on this machine (2026-02-07, SDK tag 2.0.97).

### Flash
From the same example directory:
- make flash COMX=COM9

Note: EVKs often expose two serial ports; try either if flashing fails.

### Serial console
- Baudrate: 2000000
- Use any terminal (screen/picocom/minicom/teraterm).

### Wi-Fi CLI examples
STA connect pattern exists as:
- wifi_sta_connect <ssid> <password>

This project will use SoftAP, but keep wifi_sta_connect available for debugging if needed.

## Validation (backpressure)
Run these after any change:
1) Clean build of the target app:
   - make CHIP=qcc743 BOARD=qcc744dk
2) If host-side tests exist:
   - make test  (or the project-specific command Ralph adds)
3) Grep for obvious regressions:
   - no asserts firing
   - no task creation loops
   - no heap exhaustion logs

## Runtime sanity checks
On-device:
- Confirm SoftAP + DHCP started and IP is 192.168.2.1 (or configured IP).
- Confirm /status.json updates.
- Confirm /stream is single-client enforced.
