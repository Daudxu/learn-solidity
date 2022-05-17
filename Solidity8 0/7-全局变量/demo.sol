// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract GlobalVar {
    address sa = msg.sender;
    uint256 timestamp = block.timestamp;
    uint256 blockNum = block.number;

    function getGlobalVar()
        public
        view
        returns (
            address,
            uint256,
            uint256
        )
    {
        return (sa, timestamp, blockNum);
    }
}
