// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

contract SendEther {
    constructor() payable {}

    receive() external payable {}

    function sendViaTransfer(address payable _to) external payable {
        _to.transfer(123);
    }

    function sendViaSend(address payable _to) external payable {
        bool sent = _to.send(123);
        require(sent, "send falled");
    }

    function sendViaCall(address payable _to) external payable {
        (bool success, ) = _to.call{value: 123}("");
        require(success, "send falled");
    }
}

contract EthReceiver {
    event Log(uint256 amount, uint256 gas);

    receive() external payable {
        emit Log(msg.value, gasleft());
    }
}
