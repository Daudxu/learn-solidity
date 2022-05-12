// SPDX-License-Identifier: MIT

pragma solidity ^0.4.25;

contract fallback {
    event Logsa(string message);
    event Logba(uint balance);

    function() public payable {
        emit Logsa('aaaa')
        emit Logba(address(this).balance)
    }
}