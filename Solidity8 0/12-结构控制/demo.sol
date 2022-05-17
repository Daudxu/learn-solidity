// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract IfElse {
    function ex(uint256 _x) external pure returns (uint256) {
        if (_x < 1) {
            return 1;
        } else if (_x < 20) {
            return 2;
        } else {
            return 3;
        }
    }

    function ter(uint256 _x) external pure returns (uint256) {
        return _x < 10 ? 1 : 2;
    }
}
