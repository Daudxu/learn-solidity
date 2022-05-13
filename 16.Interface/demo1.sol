// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.4.25;

interface Animal {
    function run(uint256 speed) external returns (uint256);
}

contract Cat is Animal {
    function run(uint256 speed) public returns (uint256 distance) {
        return speed * speed;
    }
}

contract Dog is Animal {
    function run(uint256 speed) public returns (uint256 distance) {
        return speed * 10;
    }
}
