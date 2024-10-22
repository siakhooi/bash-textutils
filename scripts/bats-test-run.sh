#!/bin/bash

BATS_HELPER=test_helper
export BATS_HELPER

SOURCE_BIN=$(pwd)/src/bin
export SOURCE_BIN

TEST_RUN_NUMBER=$(date +%Y%m%d%H%M%S)

test_log=bats-test-result-${TEST_RUN_NUMBER}.log
bats -r tests | tee "$test_log" 2>&1
