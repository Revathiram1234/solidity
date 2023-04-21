contract C {
	bytes array;

	function f() public {
		array.push();
	}

	function g(uint x) public {
		for (uint i = 0; i < x; ++i)
			array.push() = bytes1(uint8(i));
	}

	function l() public returns (uint) {
		return array.length;
	}

	function a(uint index) public view returns (bytes1) {
		return array[index];
	}
}
// ----
// l() -> 0
// g(uint256): 70 ->
// gas irOptimized: 182534
// gas legacy: 184021
// gas legacyOptimized: 179218
// l() -> 70
// a(uint256): 69 -> left(69)
// f() ->
// l() -> 71
// a(uint256): 70 -> 0
