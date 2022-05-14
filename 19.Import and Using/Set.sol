// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.4.25;

library Set {
    struct Data {
        mapping(int256 => bool) data;
    }

    function Insert(Data storage self, int256 key) public returns (bool) {
        if (self.data[key]) return false; // Key exists.
        self.data[key] = true;
        return true;
    }

    function Remove(Data storage self, int256 key) public returns (bool) {
        if (!self.data[key]) return false; // Key does not exist.
        self.data[key] = false;
        return true;
    }

    function Contain(Data storage self, int256 key) public view returns (bool) {
        return self.data[key];
    }
}
