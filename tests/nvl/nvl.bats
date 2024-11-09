setup(){
    load '../common-setup'
    common_setup
}
@test "nvl-0-no-argument" {
    run bash -c "nvl"
    assert_output ""
}
@test "nvl-1-argument" {
    run bash -c "nvl a"
    assert_output "a"
}
@test "nvl-2-arguments" {
    run bash -c 'nvl a b'
    assert_output "a"
}
@test "nvl-null-a" {
    run bash -c 'nvl "" a'
    assert_output "a"
}
@test "nvl-null-null-a" {
    run bash -c 'nvl "" "" a'
    assert_output "a"
}
@test "nvl-null-null-a-b" {
    run bash -c 'nvl "" "" a b'
    assert_output "a"
}
@test "nvl-many-null-a-b" {
    run bash -c 'nvl "" "" "" "" "" "" "" "" "" "" a b'
    assert_output "a"
}
