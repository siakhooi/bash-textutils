setup(){
    load '../common-setup'
    common_setup
}
test_value_expect_false(){
    run is-false $1
    assert_failure 1
}
@test "non-boolean-value-ABC" {
    test_value_expect_false ABC
}
@test "non-boolean-value-aon" {
    test_value_expect_false aon
}
@test "non-boolean-value-aY" {
    test_value_expect_false aY
}
@test "non-boolean-value-2" {
    test_value_expect_false 2
}
@test "non-boolean-value-K" {
    test_value_expect_false K
}
@test "non-boolean-value-tidak" {
    test_value_expect_false tidak
}
@test "non-boolean-value-tak" {
    test_value_expect_false tak
}
