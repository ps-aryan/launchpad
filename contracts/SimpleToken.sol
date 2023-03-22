// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


// Interface for IFeeManager
interface IFeeManager {
    function payFee(uint8 _tokenType) external payable returns(bool);
}


contract SimpleToken is ERC20 {

    uint8 private _decimals;
    constructor(
        string memory _name,
        string memory _symbol,
        uint256 _totalSupply,
        uint8 __decimals
        
    ) ERC20(_name, _symbol , _totalSupply) payable {
        _decimals=__decimals;
       
    }
    function decimals() public view override returns (uint8) {
        return _decimals;
    }
}
