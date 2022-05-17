// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Error {
    function testRequire(uint256 _i) public pure {
        require(_i <= 10, "_i <= 10");
    }

    function testRevert(uint256 _i) public pure {
        if (_i < 10) {
            revert("_i < 10");
        }
    }

    function testAssert(uint256 _i) public pure {
        assert(_i <= 10);
    }

    uint256 public num = 123;

    function foo(uint256 _i) public {
        num += 1;
        require(_i < 10);
    }

    error MyError(address caller, uint256 i);

    function testEr(uint256 _i) public view {
        if (_i > 10) {
            revert MyError(msg.sender, _i);
        }
    }
}
