common_setup(){
    load "../../$BATS_HELPER/bats-support/load"
    load "../../$BATS_HELPER/bats-assert/load"

    PATH="$SOURCE_BIN:$PATH"

    echo "PATH: $PATH" >>"$CUSTOM_LOG"

    if [[ -z $BATS_RUN_TMPDIR ]]; then
        TEST_TEMP_DIR="/tmp/bats-test-$TEST_RUN_NUMBER"
        mkdir -p $TEST_TEMP_DIR
    else
      TEST_TEMP_DIR=$BATS_RUN_TMPDIR
    fi

    echo "BATS_RUN_TMPDIR: $BATS_RUN_TMPDIR" >>"$CUSTOM_LOG"
    echo "TEST_TEMP_DIR: $TEST_TEMP_DIR" >>"$CUSTOM_LOG"

    testDatafile1=$BATS_TEST_DIRNAME/../test-data/test-data-1
    testDatafile2=$BATS_TEST_DIRNAME/../test-data/test-data-2
}