setup(){
    load '../common-setup'
    common_setup

    outputExpected=$BATS_TEST_FILENAME.$BATS_TEST_DESCRIPTION.expected
}
@test "prefix-0-no-argument" {
    run bash -c "prefix"
    assert_output - <$outputExpected
}
@test "prefix-1" {
    run bash -c "cat $testDatafile1 | prefix '>>>> '"
    assert_output - <$outputExpected
}
@test "prefix-2" {
    run bash -c "prefix '>>>> ' $testDatafile1"
    assert_output - <$outputExpected
}
@test "prefix-3-invalid-arguments" {
    run bash -c "prefix 'a' 'b' 'c'"
    assert_output - <$outputExpected
}
@test "prefix-4-non-exists-file" {
    run bash -c "prefix '>>>> ' ./non-exists-file"
    assert_output - <$outputExpected
}
@test "prefix-5-directory" {
    run bash -c "prefix '>>>> ' /etc"
    assert_output - <$outputExpected
}
@test "prefix-6" {
    run bash -c "prefix '>>>> ' $testDatafile2"
    assert_output - <$outputExpected
}
