setup(){
    load '../common-setup'
    common_setup

    outputExpected=$BATS_TEST_FILENAME.$BATS_TEST_DESCRIPTION.expected
}
@test "suffix-0-no-argument" {
    run bash -c "suffix"
    assert_output - <$outputExpected
}
@test "suffix-1" {
    run bash -c "cat $testDatafile1 | suffix ' <<<<'"
    assert_output - <$outputExpected
}
@test "suffix-2" {
    run bash -c "suffix ' <<<<' $testDatafile1"
    assert_output - <$outputExpected
}
@test "suffix-3-invalid-arguments" {
    run bash -c "suffix 'a' 'b' 'c'"
    assert_output - <$outputExpected
}
@test "suffix-4-non-exists-file" {
    run bash -c "suffix ' <<<<' ./non-exists-file"
    assert_output - <$outputExpected
}
@test "suffix-5-directory" {
    run bash -c "suffix ' <<<<' /etc"
    assert_output - <$outputExpected
}
@test "suffix-6" {
    run bash -c "suffix ' <<<<' $testDatafile2"
    assert_output - <$outputExpected
}
