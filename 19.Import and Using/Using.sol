// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.4.25;

import "./Set.sol";

contract Main {
    using Set for Set.Data;

    Set.Data mySet;

    function insert(int256 key) public returns (bool) {
        return mySet.Insert(key);
    }

    function remove(int256 key) public returns (bool) {
        return mySet.Remove(key);
    }

    function contain(int256 key) public view returns (bool) {
        return mySet.Contain(key);
    }
}
