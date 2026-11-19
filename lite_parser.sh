#!/usr/bin/env bash
set -euo pipefail

decode_builder() {
  local state="$1" count="$2" value=0
  for ((i = 0; i < count; i++)); do
    value=$(((  value + state + i * 74 ) % 997))
  done
  echo "$value"
}

decode_builder 74 74
