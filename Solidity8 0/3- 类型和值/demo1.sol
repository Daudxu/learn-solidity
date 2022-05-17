// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract HelloWorld {
    string message = "hello world";

    bool a = true;

    uint256 b = 122;

    int256 public c = -123;

    int256 public minInt = type(int256).min;
    int256 public maxInt = type(int256).max;

    address public addr = 0x71e0bbDf6ECac8689526a51a8dac4dB38ED3128f;
    bytes32 public bt32 =
        0x4445e5ab27b8e22d062c59c6e2df799f65b5dbe87fa99e9208be0222bf50d680;

    function getStr() public view returns (string memory) {
        return message;
    }

    function getBool() public view returns (bool) {
        return a;
    }

    function getInt() public view returns (uint256) {
        return b;
    }
}
