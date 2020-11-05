contract A {
    uint public x;
    fallback (bytes calldata _input) external returns (bytes memory) {
        x = _input.length;
    }
    function f() public returns (bool, bytes memory) {
        (bool success, bytes memory retval) = address(this).call("abc");
        return (success, retval);
    }
}
// ====
// compileViaYul: also
// ----
// f() -> 0x01, 0x40, 0x00
// x() -> 3
