## Execution Rules

- Do not run build or flash commands unless the user explicitly asks in that turn.
- User performs all firmware build/flash operations; the agent should provide commands and analyze results/logs.
- Default behavior is command handoff: provide exact PowerShell commands for the user to execute.
- Avoid running: `make`, `make clean`, `make flash`, or other firmware-producing commands by default.
- Focus on code edits, static checks, and troubleshooting from user logs/output.
