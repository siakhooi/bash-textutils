common_setup(){
    load "../../$BATS_HELPER/bats-support/load"
    load "../../$BATS_HELPER/bats-assert/load"

    PATH="$SOURCE_BIN:$PATH"

    testDatafile1=$BATS_TEST_DIRNAME/../test-data/test-data-1
    testDatafile2=$BATS_TEST_DIRNAME/../test-data/test-data-2
}