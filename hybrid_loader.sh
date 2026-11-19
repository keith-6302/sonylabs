#!/usr/bin/env bash
set -euo pipefail

handle_scheduler() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 30 ) % 997))
  done
  echo "$result"
}

handle_scheduler 30 30
