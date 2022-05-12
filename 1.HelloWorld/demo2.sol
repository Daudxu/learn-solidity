// SPDX-License-Identifier: MIT

pragma solidity ^0.4.25;

//声明合约
contract Demo {
    string message = "hello world";
    string message2 = "hello world2";
    string message3 = "hello world3";
    uint256 numa = 100;
    uint256 numb = 200;

    function hello() public view returns (string) {
        return message;
    }

    function aaa() external view returns (string) {
        return bbb();
    }

    function bbb() internal view returns (string) {
        return ccc();
    }

    function ccc() private view returns (string) {
        return message3;
    }

    function mul(uint256 a, uint256 b) public pure returns (uint256) {
        return a * b;
    }
}
