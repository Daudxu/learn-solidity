// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Demo {
    function Re() public pure returns (uint256, bool) {
        return (1, true);
    }

    function Sa() public pure returns (uint256 x, bool b) {
        return (1, true);
    }

    function Te() public pure returns (uint256 x, bool b) {
        x = 1;
        b = true;
    }

    function test() public pure {
        (uint256 x, bool b) = Re();
        // (,bool b) = Re();
    }
}
