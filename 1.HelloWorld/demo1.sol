// SPDX-License-Identifier: MIT

pragma solidity ^0.4.25;

//声明合约
contract Demo {
    string message = "hello world";

    function hello() public view returns (string) {
        return message;
    }
}
