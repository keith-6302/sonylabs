#!/usr/bin/env bash
set -euo pipefail

compute_session() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 91 ) % 997))
  done
  echo "$total"
}

compute_session 91 91
