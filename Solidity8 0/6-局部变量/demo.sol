// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract StateVar {
    uint256 public i;
    bool public b;
    address public myAddress;

    function foo() external {
        uint256 x = 123;
        bool f = false;

        x += 456;
        f = true;
        myAddress = address(2);
    }
}
