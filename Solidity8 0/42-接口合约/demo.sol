// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

// start  gas
// use calldata
// load state variables to memory
// short circuit
// loop increments
// cache array length
// load array elements to memory

contract gasdemo {
    uint256 public total;

    function ex(uint256[] calldata nums) external {
        for (uint256 i = 0; i < nums.length; i += 1) {
            bool isEven = nums[i] % 2 == 0;
            bool isLessThan99 = nums[i] < 99;

            if (isEven && isLessThan99) {
                total += nums[i];
            }
        }
    }

    function ex1(uint256[] calldata nums) external {
        uint256 _tatal = total;
        for (uint256 i = 0; i < nums.length; i += 1) {
            bool isEven = nums[i] % 2 == 0;
            bool isLessThan99 = nums[i] < 99;

            if (isEven && isLessThan99) {
                _tatal += nums[i];
            }
        }
    }

    function ex2(uint256[] calldata nums) external {
        uint256 _tatal = total;
        for (uint256 i = 0; i < nums.length; i += 1) {
            if (nums[i] % 2 == 0 && nums[i] < 99) {
                _tatal += nums[i];
            }
        }
    }

    function ex3(uint256[] calldata nums) external {
        uint256 _tatal = total;
        for (uint256 i = 0; i < nums.length; ++i) {
            if (nums[i] % 2 == 0 && nums[i] < 99) {
                _tatal += nums[i];
            }
        }
    }

    function ex4(uint256[] calldata nums) external {
        uint256 _tatal = total;
        uint256 len = nums.length;
        for (uint256 i = 0; i < len; ++i) {
            uint256 num = nums[i];
            if (num % 2 == 0 && num < 99) {
                _tatal += num;
            }
        }
        total = _tatal;
    }
}
