// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

interface ICounter {
    function count() external view returns (uint256);

    function inc() external;
}

contract demo {
    uint256 public count;

    function ICounter(address _counter) external {
        ICounter(_counter).inc();
        count = ICounter(_counter).count();
    }
}

contract Counter {
    uint256 public count;

    function inc() external {
        count += 1;
    }

    function dec() external {
        count -= 1;
    }
}
