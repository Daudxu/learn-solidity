// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Mapping{
     event LOG(address, uint);

     mapping(address => uint) public myMap;
     address[] public myMappingAddr;

     function setMapping(address _myAddr, uint _number) public {
         myMap[_myAddr] = _number;
         myMappingAddr.push(_myAddr);
     }

     function getMapping(address _myAddr) public view returns (uint){
         return myMap[_myAddr];
     }

     function deleteMapping(address _myAddr) public{
         delete myMap[_myAddr];
     }

     function getTotal() public view returns (uint){
         require(myMappingAddr.length > 0, "the mapping has no value!");
         uint sum = 0;
         for(uint i = 0; i <  myMappingAddr.length; i++){
             address key = myMappingAddr[i];
             uint value = myMap[key];
             sum += value;
         }
         return sum;
     }

     function test () public {
         setMapping(0x1537f0d523a264d3bBDf8d4A4e8778cd65b6D166, 10);
         setMapping(0x1537f0d523a264d3bBDf8d4A4e8778cd65b6D166, 20);
         setMapping(0x1537f0d523a264d3bBDf8d4A4e8778cd65b6D166, 30);

         uint sum = getTotal();

         assert(sum == 60);
     }
}