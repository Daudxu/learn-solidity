// SPDX-License-Identifier: MIT

pragma solidity ^0.4.25;

contract StateVariables {
    string name;
    address owner;

    constructor() public {
        name = "unknow";
        owner = msg.sender;
    }

    modifier onleOwner() {
        require(msg.sender == owner, "permission denied");
        _;
    }

    function setName(string _name) public onleOwner returns (string) {
        name = _name;
        return name;
    }

    function setNameAll(string _name) public returns (string) {
        return name = _name;
    }

    function getName() public view returns (string) {
        return name;
    }
}
