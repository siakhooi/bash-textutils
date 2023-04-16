#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Usage: $(basename "$0") outputDirectory"
    exit 0
fi
OUTPUT_DIRECTORY=$1
mkdir -p "$OUTPUT_DIRECTORY"

cat /etc/os-release | prefix ' >>>>' > "$OUTPUT_DIRECTORY"/prefix_1.out

cat /etc/os-release | suffix ' --<<<<' > "$OUTPUT_DIRECTORY"/suffix_1.out

cat /etc/os-release | prefix '[ ' | suffix ' ]' > "$OUTPUT_DIRECTORY"/prefix_suffix_1.out

is-true Yes && echo "Yes, is true"  > "$OUTPUT_DIRECTORY"/is-true-on-true.out
is-true on && echo "Yes, is true"  >> "$OUTPUT_DIRECTORY"/is-true-on-true.out
is-true Y && echo "Yes, is true"   >> "$OUTPUT_DIRECTORY"/is-true-on-true.out
is-true T && echo "Yes, is true"   >> "$OUTPUT_DIRECTORY"/is-true-on-true.out
is-true 1 && echo "Yes, is true"   >> "$OUTPUT_DIRECTORY"/is-true-on-true.out

is-true No || echo "No, is not true"     > "$OUTPUT_DIRECTORY"/is-true-on-false.out
is-true N || echo "No, is not true"     >> "$OUTPUT_DIRECTORY"/is-true-on-false.out
is-true F || echo "No, is not true"     >> "$OUTPUT_DIRECTORY"/is-true-on-false.out 
is-true False || echo "No, is not true" >> "$OUTPUT_DIRECTORY"/is-true-on-false.out  
is-true OFF || echo "No, is not true"   >> "$OUTPUT_DIRECTORY"/is-true-on-false.out
is-true ABC || echo "No, is not true"   >> "$OUTPUT_DIRECTORY"/is-true-on-false.out

is-true aYes || echo "Not true"  > "$OUTPUT_DIRECTORY"/is-true-on-not-boolean.out
is-true aon || echo "Not true"  >> "$OUTPUT_DIRECTORY"/is-true-on-not-boolean.out
is-true aY || echo "Not true"   >> "$OUTPUT_DIRECTORY"/is-true-on-not-boolean.out
is-true aT || echo "Not true"   >> "$OUTPUT_DIRECTORY"/is-true-on-not-boolean.out
is-true a1 || echo "Not true"   >> "$OUTPUT_DIRECTORY"/is-true-on-not-boolean.out
is-true bNo || echo "Not true"  >> "$OUTPUT_DIRECTORY"/is-true-on-not-boolean.out
is-true boff || echo "Not true" >> "$OUTPUT_DIRECTORY"/is-true-on-not-boolean.out
is-true bN || echo "Not true"   >> "$OUTPUT_DIRECTORY"/is-true-on-not-boolean.out
is-true bF || echo "Not true"   >> "$OUTPUT_DIRECTORY"/is-true-on-not-boolean.out
is-true b0 || echo "Not true"   >> "$OUTPUT_DIRECTORY"/is-true-on-not-boolean.out

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
