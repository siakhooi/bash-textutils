#!/bin/bash

set -x

cat /etc/os-release | prefix ' >>>>'

cat /etc/os-release | suffix ' --<<<<'

cat /etc/os-release | prefix '[ ' | suffix ' ]'

is-true Yes && echo "Yes, is true"
is-true on && echo "Yes, is true"
is-true Y && echo "Yes, is true"
is-true T && echo "Yes, is true"
is-true 1 && echo "Yes, is true"

is-true No || echo "No, is not true"
is-true N || echo "No, is not true"
is-true F || echo "No, is not true"
is-true False || echo "No, is not true"
is-true OFF || echo "No, is not true"
is-true ABC || echo "No, is not true"

is-true aYes && echo "Not true, this should not be printed"
is-true aon && echo "Not true, this should not be printed"
is-true aY && echo "Not true, this should not be printed"
is-true aT && echo "Not true, this should not be printed"
is-true a1 && echo "Not true, this should not be printed"

is-false No && echo "Yes, is false"
is-false off && echo "Yes, is false"
is-false N && echo "Yes, is false"
is-false F && echo "Yes, is false"
is-false 0 && echo "Yes, is false"

is-false Yes || echo "No, is not false"
is-false Y || echo "No, is not false"
is-false T || echo "No, is not false"
is-false True || echo "No, is not false"
is-false ON || echo "No, is not false"
is-false ABC || echo "No, is not false"

is-false bNo && echo "Not false, this should not be printed"
is-false boff && echo "Not false, this should not be printed"
is-false bN && echo "Not false, this should not be printed"
is-false bF && echo "Not false, this should not be printed"
is-false b0 && echo "Not false, this should not be printed"
