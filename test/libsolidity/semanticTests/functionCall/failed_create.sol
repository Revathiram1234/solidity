contract D { constructor() payable {} }
contract C {
	uint public x;
	constructor() payable {}
	function f(uint amount) public returns (D) {
		x++;
		return (new D){value: amount}();
	}
	function stack(uint depth) public payable returns (address) {
		if (depth > 0)
			return this.stack(depth - 1);
		else
			return address(f(0));
	}
}
// ====
// EVMVersion: >=byzantium
// ----
// constructor(), 20 wei
// gas irOptimized: 179697
// gas legacy: 279539
// gas legacyOptimized: 173427
// f(uint256): 20 -> 0x137aa4dfc0911524504fcd4d98501f179bc13b4a
// x() -> 1
// f(uint256): 20 -> FAILURE
// x() -> 1
// stack(uint256): 1023 -> FAILURE
// gas irOptimized: 260987
// gas legacy: 483942
// gas legacyOptimized: 302349
// x() -> 1
// stack(uint256): 10 -> 0x87948bd7ebbe13a00bfd930c93e4828ab18e3908
// x() -> 2
