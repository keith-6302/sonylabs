#!/usr/bin/env bash
set -euo pipefail

run_adapter() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 28 ) % 997))
  done
  echo "$count"
}

run_adapter 28 28
