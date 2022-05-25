// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

contract CallTestContrat {
    // 写法1
    function setX(address _test, uint256 _x) external {
        TestContrat(_test).setX(_x);
    }

    // // 写法2
    // function setX2(TestContrat _test, uint256 _x) external {
    //     _test.setX(_x);
    // }

    function getX(address _test) external view returns (uint256 x) {
        x = TestContrat(_test).getX();
    }

    function setXandReceiveEther(address _test, uint256 _x) external payable {
        TestContrat(_test).setXandReceiveEther{value: msg.value}(_x);
    }

    function getXanValue(address _test)
        external
        view
        returns (uint256 x, uint256 value)
    {
        (x, value) = TestContrat(_test).getXanValue();
        return (x, value);
    }
}

contract TestContrat {
    uint256 public x;
    uint256 public value = 123;

    function setX(uint256 _x) external {
        x = _x;
    }

    function getX() external view returns (uint256) {
        return x;
    }

    function setXandReceiveEther(uint256 _x) external payable {
        x = _x;
        value = msg.value;
    }

    function getXanValue() external view returns (uint256, uint256) {
        return (x, value);
    }
}
