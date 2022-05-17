// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract HelloWorld {
    string message = "hello world";

    function hello() public view returns (string memory) {
        return message;
    }
}
