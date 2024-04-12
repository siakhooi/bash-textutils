setup(){
    load '../common-setup'
    common_setup

    testDatafile1=$BATS_TEST_DIRNAME/test-data-1
    testDatafile2=$BATS_TEST_DIRNAME/test-data-2

    outputExpected=$BATS_TEST_FILENAME.$BATS_TEST_DESCRIPTION.expected
    outputActual="$TEST_TEMP_DIR/$(basename "$BATS_TEST_FILENAME").$BATS_TEST_DESCRIPTION.actual"
}
@test "suffix-0-no-argument" {
    run bash -c "suffix | tee $outputActual"
    assert_output - <$outputExpected
}
@test "suffix-1" {
    run bash -c "cat $testDatafile1 | suffix ' <<<<' | tee $outputActual"
    assert_output - <$outputExpected
}
@test "suffix-2" {
    run bash -c "suffix ' <<<<' $testDatafile1 | tee $outputActual"
    assert_output - <$outputExpected
}
@test "suffix-3-invalid-arguments" {
    run bash -c "suffix 'a' 'b' 'c' | tee $outputActual"
    assert_output - <$outputExpected
}
@test "suffix-4-non-exists-file" {
    run bash -c "suffix ' <<<<' ./non-exists-file | tee $outputActual"
    assert_output - <$outputExpected
}
@test "suffix-5-directory" {
    run bash -c "suffix ' <<<<' /etc | tee $outputActual"
    assert_output - <$outputExpected
}
@test "suffix-6" {
    run bash -c "suffix ' <<<<' $testDatafile2 | tee $outputActual"
    assert_output - <$outputExpected
}
