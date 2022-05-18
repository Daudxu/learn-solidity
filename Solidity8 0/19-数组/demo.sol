// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Array {
    uint256[] public nums = [1, 2, 3];
    uint256[3] public numsFixed = [4, 5, 6];

    function demo() external {
        nums.push(4);
        uint256 x = nums[1];
        nums[2] = 777;
        delete nums[1];
        uint256 len = nums.length;

        uint256[] memory a = new uint256[](5);
        a[1] = 123;
    }

    function returnArray() external view returns (uint256[] memory) {
        return nums;
    }
}
