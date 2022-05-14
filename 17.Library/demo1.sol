// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.4.25;

library Set {
    struct Data {
        mapping(int256 => bool) data;
    }

    function Insert(Data storage d, int256 key) public returns (bool) {
        if (d.data[key]) return false;
        d.data[key] = true;
        return true;
    }

    function Remove(Data storage d, int256 key) public returns (bool) {
        if (!d.data[key]) return false;
        d.data[key] = false;
        return true;
    }

    function Contain(Data storage self, int256 key) public view returns (bool) {
        return self.data[key];
    }
}

contract Main {
    Set.Data set;

    function inset(int256 key) public returns (bool) {
        return Set.Insert(set, key);
    }

    function remove(int256 key) public returns (bool) {
        return Set.Remove(set, key);
    }

    function contain(int256 key) public returns (bool) {
        return Set.Contain(set, key);
    }
}
