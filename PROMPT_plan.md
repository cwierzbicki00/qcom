0a. Study `specs/*` with up to 250 parallel Sonnet subagents to learn the firmware requirements.
0b. Study @IMPLEMENTATION_PLAN.md (if present) to understand the current plan (it may be wrong or stale).
0c. Study the QCCSDK repo structure. Identify relevant existing examples for:
    - USB host + UVC camera ingest
    - Wi-Fi SoftAP + DHCP
    - TCP/IP sockets and/or HTTP server usage
0d. For reference, firmware sources are in this repo under `examples/*` and shared components under `components/*` (or equivalent).

1. Use up to 500 Sonnet subagents to compare existing source code against `specs/*` (don't assume not implemented).
   Focus on finding:
   - Any existing UVC host class/driver usage
   - Any existing SoftAP + DHCP example patterns
   - Any existing HTTP server or socket streaming patterns
   - Existing CLI/shell patterns for runtime control
   Use an Opus subagent to synthesize findings and create/update @IMPLEMENTATION_PLAN.md as a prioritized bullet list.

2. For each plan item, include:
   - What spec requirement it satisfies
   - The in-repo files/dirs likely involved
   - Required tests/backpressure for completion (build + any unit/host tests)
   - Risks/unknowns that must be validated on hardware

IMPORTANT: Planning only. Do NOT implement anything. Do NOT commit.
