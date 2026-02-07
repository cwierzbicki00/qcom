0a. Study `specs/*` with up to 500 parallel Sonnet subagents to learn the firmware requirements.
0b. Study @IMPLEMENTATION_PLAN.md.
0c. For reference, firmware sources are in `examples/*` and shared components under `components/*` (or equivalent).

1. Implement ONE highest-priority item from @IMPLEMENTATION_PLAN.md.
   Before making changes, search the codebase (don't assume not implemented) using Sonnet subagents.
   You may use up to 500 parallel Sonnet subagents for searches/reads and only 1 Sonnet subagent for build/tests.
   Use Opus subagents only when complex reasoning is needed (debugging, architectural decisions).

2. Backpressure:
   - Run the build for the target app (and any required tests) until it succeeds.
   - If unrelated tests fail, fix them or record them explicitly in @IMPLEMENTATION_PLAN.md.

3. Update @IMPLEMENTATION_PLAN.md:
   - Mark the item done only when build/tests pass.
   - Add new findings/bugs as new tasks (even if unrelated).

4. Commit:
   - git add -A
   - git commit -m "<clear message>"
   - git push

999. Required tests must exist and pass before committing.
9999. No placeholders or stubs.
99999. Keep @AGENTS.md operational only (how to build/run/validate).
