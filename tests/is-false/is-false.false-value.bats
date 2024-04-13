setup(){
    load '../common-setup'
    common_setup
}
test_value_expect_true(){
    run is-false $1
    assert_success
}
@test "false-value-No" {
    test_value_expect_true No
}
@test "false-value-N" {
    test_value_expect_true N
}
@test "false-value-F" {
    test_value_expect_true F
}
@test "false-value-False" {
    test_value_expect_true False
}
@test "false-value-OFF" {
    test_value_expect_true OFF
}
