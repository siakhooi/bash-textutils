#!/bin/bash

if [[ $# -ne 1 ]]; then
  echo "Usage: $(basename "$0") outputDirectory"
  exit 0
fi
OUTPUT_DIRECTORY=$1
mkdir -p "$OUTPUT_DIRECTORY"

ALL_MAN_PAGES_1=(
  is-true
  is-false
  prefix
  suffix
  siakhooi-textutils
)

for i in "${ALL_MAN_PAGES_1[@]}"; do
  MANWIDTH=120 man --pager=cat "$i" >"$OUTPUT_DIRECTORY/man_${i}.out"
done
