setup(){
    load '../common-setup'
    common_setup

    outputExpected=$BATS_TEST_FILENAME.$BATS_TEST_DESCRIPTION.expected
}
@test "prefix-suffix" {
    run bash -c "cat $testDatafile1 | prefix '[ ' | suffix ' ]'"
    assert_output - <$outputExpected
}
