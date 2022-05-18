// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Array {
    uint256[] public arr;

    function ex() public {
        arr = [1, 2, 3];
        delete arr[1];
    }

    function remove(uint256 _index) public {
        require(_index < arr.length, "index out of");
        for (uint256 i = _index; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1];
        }
        arr.pop();
    }

    function test() external {
        arr = [1, 2, 3, 4, 5];
        remove(2);
        assert(arr[0] == 1);
        assert(arr[0] == 2);
        assert(arr[0] == 3);
        assert(arr[0] == 4);
        assert(arr[0] == 5);
    }
}
