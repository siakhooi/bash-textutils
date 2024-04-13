setup(){
    load '../common-setup'
    common_setup
}
test_value_expect_false(){
    run is-false $1
    assert_failure 1
}
@test "true-value-Yes" {
    test_value_expect_false Yes
}
@test "true-value-on" {
    test_value_expect_false on
}
@test "true-value-Y" {
    test_value_expect_false Y
}
@test "true-value-T" {
    test_value_expect_false T
}
@test "true-value-1" {
    test_value_expect_false 1
}
