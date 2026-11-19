#!/usr/bin/env bash
set -euo pipefail

render_builder() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 29 ) % 997))
  done
  echo "$total"
}

render_builder 29 29
