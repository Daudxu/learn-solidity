// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Event {
    event aaa(string message, uint256 val);
    // up to three index
    event IndexedLog(address indexed sender, uint256 val);

    function ex() external {
        emit aaa("MESSAGE", 123);
        emit IndexedLog(msg.sender, 456);
    }

    event Message(address indexed _from, address indexed _to, string message);

    function sendMessage(address _to, string calldata message) external {
        emit Message(msg.sender, _to, message);
    }
}
