pragma solidity ^0.4.25;

import "browser/ERC20.sol";

contract Burnable is ERC20 {
    event Burn(address account, uint256 tokens);

    function burn(uint256 tokens) public returns (bool) {
        require(tokens <= _balances[msg.sender]);
        // 減少 total supply
        _totalSupply = _totalSupply.sub(tokens);
        // 減少 msg.sender balance
        _balances[msg.sender] = _balances[msg.sender].sub(tokens);

        emit Burn(msg.sender, tokens);
        emit Transfer(msg.sender, address(0), tokens);
        return true;
    }
}
