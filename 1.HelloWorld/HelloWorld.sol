// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract HelloWorld {
    string message = "hello world";
    
    constructor(){

    }

    function setMessage(string memory _message) public{
        message = _message;
    }

    function getMessage() public view returns (string memory ){
        return message;
    }

}