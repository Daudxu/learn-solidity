// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract demo {
    // 45718 gas
    // addres public owner = msg.sender;

    // 43585 gas
    address public immutable owner;

    constructor() {
        owner = msg.sender;
    }

    uint256 public x;

    function foo() external {
        require(msg.sender == owner);
        x += 1;
    }
}
