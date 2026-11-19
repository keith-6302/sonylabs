#!/usr/bin/env bash
set -euo pipefail

run_service() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 63 ) % 997))
  done
  echo "$acc"
}

run_service 63 63
