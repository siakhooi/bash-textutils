setup(){
    load '../common-setup'
    common_setup

    testDatafile1=$BATS_TEST_DIRNAME/../test-data/test-data-1

    outputExpected=$BATS_TEST_FILENAME.$BATS_TEST_DESCRIPTION.expected
    outputActual="$TEST_TEMP_DIR/$(basename "$BATS_TEST_FILENAME").$BATS_TEST_DESCRIPTION.actual"
}
@test "prefix-suffix" {
    run bash -c "cat $testDatafile1 | prefix '[ ' | suffix ' ]' | tee $outputActual"
    assert_output - <$outputExpected
}
