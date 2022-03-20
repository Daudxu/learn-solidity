# learn-solidity

### solidity

```
// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract A {
    string public name;
    string public name2;
    
    constructor(string memory _name, string memory _name2){
        name = _name;
        name2 = _name2;
    }

    function getContractName() public view virtual returns (string memory){
        return name;
    }
    
}


contract B {
   string public helloWorld;

   constructor(string memory _helloworld){
       helloWorld = _helloworld;
   }

     function getHelloWorld() public view virtual returns (string memory){
        return helloWorld;
    }
}

contract C is A("A1", "A2"), B("HellWorld") {

}


contract D is A, B {
//     constructor() A("A") B("HellWorld"){

//     }
    constructor(string memory _name, string memory _helloworld) A(_name, _helloworld) B(_helloworld) {

    }

}



```