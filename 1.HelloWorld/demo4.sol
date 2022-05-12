// SPDX-License-Identifier: MIT

pragma solidity ^0.4.25;

contract StateVariables {
    string name;
    address owner;

    constructor() public {
        name = "unknow";
        owner = msg.sender;
    }

    function setName(string _name) public returns (string) {
        if (msg.sender == owner) {
            name = _name;
        } else {
            revert("permission denied");
        }
        return name;
    }

    function setNameAll(string _name) public returns (string) {
        return name = _name;
    }

    function getName() public view returns (string) {
        return name;
    }
}
