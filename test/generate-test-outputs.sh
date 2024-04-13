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

for i in ${ALL_MAN_PAGES_1[@]}; do
    MANWIDTH=120 man --pager=cat "$i" >$OUTPUT_DIRECTORY/man_${i}.out
done

is-false No && echo "Yes, is false"   > "$OUTPUT_DIRECTORY"/is-false-on-false.out
is-false off && echo "Yes, is false" >> "$OUTPUT_DIRECTORY"/is-false-on-false.out
is-false N && echo "Yes, is false"   >> "$OUTPUT_DIRECTORY"/is-false-on-false.out
is-false F && echo "Yes, is false"   >> "$OUTPUT_DIRECTORY"/is-false-on-false.out
is-false 0 && echo "Yes, is false"   >> "$OUTPUT_DIRECTORY"/is-false-on-false.out

is-false Yes || echo "No, is not false"   > "$OUTPUT_DIRECTORY"/is-false-on-true.out
is-false Y || echo "No, is not false"    >> "$OUTPUT_DIRECTORY"/is-false-on-true.out
is-false T || echo "No, is not false"    >> "$OUTPUT_DIRECTORY"/is-false-on-true.out
is-false True || echo "No, is not false" >> "$OUTPUT_DIRECTORY"/is-false-on-true.out
is-false ON || echo "No, is not false"   >> "$OUTPUT_DIRECTORY"/is-false-on-true.out
is-false ABC || echo "No, is not false"  >> "$OUTPUT_DIRECTORY"/is-false-on-true.out

is-false aYes || echo "Not false"  > "$OUTPUT_DIRECTORY"/is-false-on-not-boolean.out
is-false aon || echo "Not false"  >> "$OUTPUT_DIRECTORY"/is-false-on-not-boolean.out
is-false aY || echo "Not false"   >> "$OUTPUT_DIRECTORY"/is-false-on-not-boolean.out
is-false aT || echo "Not false"   >> "$OUTPUT_DIRECTORY"/is-false-on-not-boolean.out
is-false a1 || echo "Not false"   >> "$OUTPUT_DIRECTORY"/is-false-on-not-boolean.out
is-false bNo || echo "Not false"  >> "$OUTPUT_DIRECTORY"/is-false-on-not-boolean.out
is-false boff || echo "Not false" >> "$OUTPUT_DIRECTORY"/is-false-on-not-boolean.out
is-false bN || echo "Not false"   >> "$OUTPUT_DIRECTORY"/is-false-on-not-boolean.out
is-false bF || echo "Not false"   >> "$OUTPUT_DIRECTORY"/is-false-on-not-boolean.out
is-false b0 || echo "Not false"   >> "$OUTPUT_DIRECTORY"/is-false-on-not-boolean.out
