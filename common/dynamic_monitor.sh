#!/usr/bin/env bash
set -euo pipefail

handle_engine() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 11 ) % 997))
  done
  echo "$count"
}

handle_engine 11 11
