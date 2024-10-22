#!/bin/bash

EXPECTED_DIRECTORY=test/expected
ACTUAL_DIRECTORY=$(mktemp -d)

test/generate-test-outputs.sh "$ACTUAL_DIRECTORY"

if diff $EXPECTED_DIRECTORY "$ACTUAL_DIRECTORY"; then echo.green "Look good!"; else echo.red "Something wrong!"; fi

echo.blue "Actual Result in: $ACTUAL_DIRECTORY"

ls -l "$ACTUAL_DIRECTORY"
