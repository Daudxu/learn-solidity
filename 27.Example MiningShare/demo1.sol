pragma solidity ^0.4.25;

import "browser/SafeMath.sol";

contract MiningShare {
    using SafeMath for uint256;

    address private owner = 0x0;

    uint256 private closeBlock = 0;

    mapping(address => uint256) private usersNTD;

    mapping(address => uint256) private usersWithdraw;

    uint256 private totalNTD = 0;

    uint256 private totalWithdraw = 0;

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    modifier onlyShareHolders() {
        require(usersNTD[msg.sender] != 0);
        _;
    }

    modifier beforeCloseBlock() {
        require(block.number <= closeBlock);
        _;
    }

    modifier afterCloseBlock() {
        require(block.number > closeBlock);
        _;
    }

    constructor() public {
        owner = msg.sender;
        closeBlock = block.number + 2000;
    }

    function CapitalIncrease(address account, uint256 NTD)
        public
        onlyOwner
        beforeCloseBlock
    {
        usersNTD[account] = usersNTD[account].add(NTD);
        totalNTD = totalNTD.add(NTD);
    }

    function CapitalDecrease(address account, uint256 NTD)
        public
        onlyOwner
        beforeCloseBlock
    {
        usersNTD[account] = usersNTD[account].sub(NTD);
        totalNTD = totalNTD.sub(NTD);
    }

    function MyTotalNTD() public constant onlyShareHolders returns (uint256) {
        return usersNTD[msg.sender];
    }

    function MyTotalWithdraw()
        public
        constant
        onlyShareHolders
        afterCloseBlock
        returns (uint256)
    {
        return usersWithdraw[msg.sender];
    }

    function TotalMined()
        public
        constant
        onlyShareHolders
        afterCloseBlock
        returns (uint256)
    {
        return totalWithdraw.add(address(this).balance);
    }

    function Withdraw() public onlyShareHolders afterCloseBlock {
        uint256 totalMined = totalWithdraw.add(address(this).balance);
        // totalMined * hisNTD / totalNTD - userWithdraw;
        uint256 userCanWithdraw = totalMined
            .mul(usersNTD[msg.sender].div(totalNTD))
            .sub(usersWithdraw[msg.sender]);
        usersWithdraw[msg.sender].add(userCanWithdraw);
        totalWithdraw.add(userCanWithdraw);
        msg.sender.transfer(userCanWithdraw);
    }
}
