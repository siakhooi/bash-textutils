setup(){
    load '../common-setup'
    common_setup
}
test_value_expect_false(){
    run is-true $1
    assert_failure 1
}
@test "false-value-No" {
    test_value_expect_false No
}
@test "false-value-N" {
    test_value_expect_false N
}
@test "false-value-F" {
    test_value_expect_false F
}
@test "false-value-False" {
    test_value_expect_false False
}
@test "false-value-OFF" {
    test_value_expect_false OFF
}
