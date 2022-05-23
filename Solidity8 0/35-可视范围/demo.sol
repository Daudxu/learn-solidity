// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract demo {
    uint256 private x = 0;
    uint256 internal y = 1;
    uint256 public z = 2;

    function privateFunc() private pure returns (uint256) {
        return 0;
    }

    function internalFunc() internal pure returns (uint256) {
        return 100;
    }

    function publicFunc() public pure returns (uint256) {
        return 200;
    }

    function externalFunc() external pure returns (uint256) {
        return 300;
    }

    function ex() external view {
        x + y + 1;
    }
}

contract demo2 is demo {
    function ex2() external view {
        y + z;
        internalFunc();
        publicFunc();
    }
}
