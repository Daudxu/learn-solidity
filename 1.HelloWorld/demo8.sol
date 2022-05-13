// SPDX-License-Identifier: MIT

pragma solidity ^0.4.25;

contract Test {
    bool isValid;

    constructor() public {
        isValid = true;
    }

    function f1() public returns (int256) {
        isValid = false;
        assert(false);
        return 0;
    }

    function f2() public returns (int256) {
        isValid = false;
        require(false, "require");
        return 0;
    }

    function f3() public returns (int256) {
        isValid = false;
        revert("revert");
        return 0;
    }
}
