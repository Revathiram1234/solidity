contract C {
    uint[] storageArray;
    function test_indices(uint256 len) public
    {
        while (storageArray.length < len)
            storageArray.push();
        while (storageArray.length > len)
            storageArray.pop();
        for (uint i = 0; i < len; i++)
            storageArray[i] = i + 1;

        for (uint i = 0; i < len; i++)
            require(storageArray[i] == i + 1);
    }
}
// ----
// test_indices(uint256): 1 ->
// test_indices(uint256): 129 ->
// gas irOptimized: 3020710
// gas legacy: 3072457
// gas legacyOptimized: 3014415
// test_indices(uint256): 5 ->
// gas irOptimized: 578008
// gas legacy: 575345
// gas legacyOptimized: 572912
// test_indices(uint256): 10 ->
// gas irOptimized: 158347
// gas legacy: 162717
// gas legacyOptimized: 158422
// test_indices(uint256): 15 ->
// gas irOptimized: 173377
// gas legacy: 179872
// gas legacyOptimized: 173727
// test_indices(uint256): 0xFF ->
// gas irOptimized: 5680122
// gas legacy: 5782507
// gas legacyOptimized: 5668997
// test_indices(uint256): 1000 ->
// gas irOptimized: 18202919
// gas legacy: 18608799
// gas legacyOptimized: 18179744
// test_indices(uint256): 129 ->
// gas irOptimized: 4158223
// gas legacy: 4170230
// gas legacyOptimized: 4126312
// test_indices(uint256): 128 ->
// gas irOptimized: 411932
// gas legacy: 466536
// gas legacyOptimized: 418968
// test_indices(uint256): 1 ->
// gas irOptimized: 581570
// gas legacy: 577436
// gas legacyOptimized: 576168
