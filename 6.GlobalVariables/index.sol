// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract GlobalVariables {
    event LOG(address, uint);
    
    function getGasInfo() public view returns(uint, uint){
        return (tx.gasprice, block.gaslimit);
    }

    function getBlockInfo() public view returns(uint, address, uint, uint, uint, uint){
        return(block.chainid,
        block.coinbase,
        block.difficulty,
        block.gaslimit,
        block.number,
        block.timestamp);
    }

    function getMessageInfo() public payable {
        // emit LOG(msg.sender, msg.value);
        emit LOG(msg.sender, msg.value);
    }
}

