pragma solidity ^0.4.25;

import "browser/SafeMath.sol";
import "browser/IERC20.sol";

contract ERC20 is IERC20 {
    using SafeMath for uint256;

    uint256 private _totalSupply;
    mapping(address => uint256) _balances;

    function totalSupply() external view returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address tokenOwner)
        external
        view
        returns (uint256 balance)
    {
        return _balances[tokenOwner];
    }

    function transfer(address to, uint256 tokens)
        external
        returns (bool success)
    {
        _balances[msg.sender] = _balances[msg.sender].sub(tokens);
        _balances[to] = _balances[to].add(tokens);
        emit Transfer(msg.sender, to, tokens);
        return true;
    }

    function allowance(address tokenOwner, address spender)
        external
        view
        returns (uint256 remaining)
    {
        // TODO
    }

    function approve(address spender, uint256 tokens)
        external
        returns (bool success)
    {
        // TODO
    }

    function transferFrom(
        address from,
        address to,
        uint256 tokens
    ) external returns (bool success) {
        // TODO
    }
}
