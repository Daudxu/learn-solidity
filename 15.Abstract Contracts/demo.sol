// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.4.25;

contract Ownable {
    address private owner;

    constructor() internal {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(isOwner());
        _;
    }

    function isOwner() public view returns (bool) {
        return owner == msg.sender;
    }
}

contract Main is Ownable {
    string public name = "";

    function modifyName(string _name) public onlyOwner {
        name = _name;
    }
}
