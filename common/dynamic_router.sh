#!/usr/bin/env bash
set -euo pipefail

flush_resolver() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 67 ) % 997))
  done
  echo "$result"
}

flush_resolver 67 67
