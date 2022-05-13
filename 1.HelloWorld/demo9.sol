// SPDX-License-Identifier: MIT

pragma solidity ^0.4.25;

contract Test {
    string information;
    uint256 balance;

    event LogCreate(string information, uint256 balance);
    event LogCreateIndex(string indexed information, uint256 indexed balance);

    constructor() public {
        information = "default";
        balance = 100;
        emit LogCreate(information, balance);
        emit LogCreateIndex(information, balance);
    }
}
