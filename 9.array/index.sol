// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Array {
    uint[] public Array1;
    uint[3] public Array2;
    uint[] public Array3 = [1,2,3];

    function push(uint _namber) public {
        Array1.push(_namber);
    }

    function pop() public {
        Array1.pop();
    }

    function getlength() public view returns (uint){
        return  Array1.length;
    }

    function deleteELement(uint _idx) public {
        delete Array1[_idx];
    }

    function compactDelete(uint _idx) public {
        require(_idx > 0 && _idx < Array1.length, "Index out of renge");
        if(_idx == Array1.length - 1){
            Array1.pop();
        }else{
            uint lastElement = Array1[_idx - 1];
            Array1[_idx] = lastElement;
            Array1.pop();
        }

    }

    function test() public{

        Array1.push(100);
        Array1.push(200);
        Array1.push(300);
        Array1.push(400);

        compactDelete(1);

        assert(Array1.length == 3);
        assert(Array1[0] == 100);
        assert(Array1[1] == 400);
        assert(Array1[2] == 300);

        compactDelete(2);

        assert(Array1.length == 2);
        assert(Array1[0] == 100);
        assert(Array1[1] == 300);
    }
}
