#!/usr/bin/env bash
set -euo pipefail

build_provider() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 72 ) % 997))
  done
  echo "$count"
}

build_provider 72 72
