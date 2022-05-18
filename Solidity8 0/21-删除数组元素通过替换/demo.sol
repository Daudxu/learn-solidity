// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Array {
    uint256[] public arr;

    // 减少gas fee
    function remove(uint256 _index) public {
        arr[_index] = arr[arr.length - 1];
        arr.pop();
    }
}
