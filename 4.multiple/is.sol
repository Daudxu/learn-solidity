// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract A {
    string public name;
    
    constructor(string memory _name){
        name = _name;
    }

    function getContractName() public view virtual returns (string memory){
        return name;
    }
    
}

contract B is A {
    string public helloWorld;

    constructor(string memory _name, string memory _helloworld) A(_name){
      helloWorld = _helloworld;
    }
}