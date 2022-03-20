# learn-solidity

### 1. HelloWorld.sol

合约编写IDE：https://remix.ethereum.org/

先创建 workspace 

workspace_learn_solidity

learn-solidity

COMPILER 0.8.4


Deploy & run transactions

javascript VN

Deploy

```
// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract HelloWorld {
    string message = "hello world";
    
    constructor(){

    }

    function setMessage(string memory _message) public{
        message = _message;
    }

    function getMessage() public view returns (string memory ){
        return message;
    }

}
```