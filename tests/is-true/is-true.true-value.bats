setup(){
    load '../common-setup'
    common_setup
}
test_value_expect_true(){
    run is-true $1
    assert_success
}
@test "true-value-Yes" {
    test_value_expect_true Yes
}
@test "true-value-on" {
    test_value_expect_true on
}
@test "true-value-Y" {
    test_value_expect_true Y
}
@test "true-value-T" {
    test_value_expect_true T
}
@test "true-value-1" {
    test_value_expect_true 1
}
