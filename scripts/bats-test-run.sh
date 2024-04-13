#!/usr/bin/env bash

BATS_HELPER=test_helper
export BATS_HELPER

TEST_RUN_NUMBER=$(date +%Y%m%d%H%M%S)
export TEST_RUN_NUMBER
CUSTOM_LOG=bats-test-${TEST_RUN_NUMBER}-custom.log
export CUSTOM_LOG

SOURCE_BIN=$(pwd)/src/bin
export SOURCE_BIN

bats -r tests | tee bats-test-${TEST_RUN_NUMBER}-result.log
