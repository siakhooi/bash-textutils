setup(){
    load '../common-setup'
    common_setup

    testDatafile1=$BATS_TEST_DIRNAME/test-data-1
    testDatafile2=$BATS_TEST_DIRNAME/test-data-2

    outputExpected=$BATS_TEST_FILENAME.$BATS_TEST_DESCRIPTION.expected
    outputActual="$TEST_TEMP_DIR/$(basename "$BATS_TEST_FILENAME").$BATS_TEST_DESCRIPTION.actual"
}
@test "prefix-0-no-argument" {

    run bash -c "prefix | tee $outputActual"
    assert_output - <$outputExpected
}
@test "prefix-1" {
    run bash -c "cat $testDatafile1 | prefix '>>>> ' | tee $outputActual"
    assert_output - <$outputExpected
}
@test "prefix-2" {
    run bash -c "prefix '>>>> ' $testDatafile1 | tee $outputActual"
    assert_output - <$outputExpected
}
@test "prefix-3-invalid-arguments" {
    run bash -c "prefix 'a' 'b' 'c' | tee $outputActual"
    assert_output - <$outputExpected
}
@test "prefix-4-non-exists-file" {
    run bash -c "prefix '>>>> ' ./non-exists-file | tee $outputActual"
    assert_output - <$outputExpected
}
@test "prefix-5-directory" {
    run bash -c "prefix '>>>> ' /etc | tee $outputActual"
    assert_output - <$outputExpected
}
@test "prefix-6" {
    run bash -c "prefix '>>>> ' $testDatafile2 | tee $outputActual"
    assert_output - <$outputExpected
}
