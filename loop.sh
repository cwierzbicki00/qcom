#!/usr/bin/env bash
set -euo pipefail

# Ralph loop runner for this repo.
#
# Modes:
#   ./loop.sh plan [max]
#   ./loop.sh build [max]
#   ./loop.sh [max]          # defaults to build
#
# Environment overrides:
#   RALPH_CMD   : command used to run the agent (default: "claude")
#   RALPH_MODEL : model name passed to claude (default: "opus")
#
# Notes:
# - This script assumes a Claude-style CLI interface.
# - If you use a different agent CLI, edit run_agent() accordingly.

MODE="build"
MAX_ITERATIONS=0

if [[ $# -ge 1 ]]; then
  if [[ "$1" == "plan" || "$1" == "build" ]]; then
    MODE="$1"
    shift
  fi
fi

if [[ $# -ge 1 ]]; then
  if [[ "$1" =~ ^[0-9]+$ ]]; then
    MAX_ITERATIONS="$1"
    shift
  else
    echo "Error: max iterations must be an integer"
    exit 1
  fi
fi

if [[ $# -ge 1 ]]; then
  echo "Error: unexpected extra args: $*"
  exit 1
fi

PROMPT_FILE="PROMPT_build.md"
if [[ "$MODE" == "plan" ]]; then
  PROMPT_FILE="PROMPT_plan.md"
fi

if [[ ! -f "$PROMPT_FILE" ]]; then
  echo "Error: $PROMPT_FILE not found"
  exit 1
fi

if [[ ! -f "AGENTS.md" ]]; then
  echo "Error: AGENTS.md not found"
  exit 1
fi

RALPH_CMD="${RALPH_CMD:-claude}"
RALPH_MODEL="${RALPH_MODEL:-opus}"

CURRENT_BRANCH="$(git branch --show-current || true)"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Mode:        $MODE"
echo "Prompt:      $PROMPT_FILE"
echo "Branch:      ${CURRENT_BRANCH:-<no-git-branch>}"
echo "Max iters:   ${MAX_ITERATIONS}"
echo "RALPH_CMD:   $RALPH_CMD"
echo "RALPH_MODEL: $RALPH_MODEL"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

run_agent() {
  # Claude Code-style invocation.
  # If your CLI differs, change this function only.
  cat "$PROMPT_FILE" | "$RALPH_CMD" -p \
    --dangerously-skip-permissions \
    --output-format=stream-json \
    --model "$RALPH_MODEL" \
    --verbose
}

ITER=0
while true; do
  if [[ "$MAX_ITERATIONS" -gt 0 && "$ITER" -ge "$MAX_ITERATIONS" ]]; then
    echo "Reached max iterations: $MAX_ITERATIONS"
    break
  fi

  run_agent || {
    echo "Agent exited non-zero (iteration $ITER)."
    echo "Fix environment/build issues and rerun."
    exit 1
  }

  # push after each iteration (best-effort)
  CURRENT_BRANCH="$(git branch --show-current || true)"
  if [[ -n "${CURRENT_BRANCH}" ]]; then
    git push origin "$CURRENT_BRANCH" || git push -u origin "$CURRENT_BRANCH" || true
  fi

  ITER=$((ITER + 1))
  echo -e "\n\n======================== LOOP $ITER ========================\n"
done
