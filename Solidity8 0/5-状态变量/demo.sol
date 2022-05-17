// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract StateVar {
    uint256 sa = 123;

    function sub(uint256 _var) public returns (uint256) {
        return sa = _var;
    }
}
