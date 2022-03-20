// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract FunctionVisibility{
    uint value;

    function getValue() external view returns (uint){
        return value;
    }

    function setValue(uint _value) public {
        value = _value;
    }

    function _getValueInternal() internal view returns (uint) {
        return value;
    }

    function _getValuePrivate() private view returns (uint){
        return  value;
    }
}

contract SubFuntionVisbility is FunctionVisibility{
    function getValueFromParent() public view returns(uint){
        return _getValueInternal();
    }
}