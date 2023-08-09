// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    constructor() ERC20("degen", "DGN") {
    }

   
    event mintToken(address indexed to, uint256 value);
    event burnToken(address indexed from, uint256 value);

     function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
        emit mintToken(to, amount);
    }

    function burn(uint value) public {
        uint x = balanceOf(msg.sender);
        require(x > value, "Not enough balance to burn tokens");
        _burn(msg.sender, value);
        emit burnToken(msg.sender, value);
    }

    function transfer(address receiver, uint256 amount) public override returns (bool)
    {
        require(balanceOf(msg.sender)> amount, "Not enough balance in owner account to transfer tokens");
        return super.transfer(receiver, amount);
    }
    
      function NFTStore() public pure returns(string[] memory) {
        string[] memory strings = new string[](4);
        strings[0] = "Playstation 5";
        strings[1] = "Amazon coupons";
        strings[2] = "Custom merch";
        strings[3] = "Smart Watch";
        return strings;
    }

    struct RedeemOption {
        string NFTId;
        uint256 NFTAmount;
        uint256 choice;
    }

    mapping(address => RedeemOption) public redeemOptions;

    function redeem(uint256 choice, uint quantity) public {
        require(choice >= 1 && choice <= 4, "Invalid option");

        if (choice == 1) {
            require(balanceOf(msg.sender) >= 100, "Insufficient tokens");
            uint a = balanceOf(msg.sender)/100;
            require(quantity <= a, "This much quantity cannot be purchased");
            _burn(msg.sender, 100*quantity);
            string memory NFTId = "Playstation 5";
            redeemOptions[msg.sender] = RedeemOption(NFTId, quantity, choice);
        } 
        else if (choice == 2) {
            require(balanceOf(msg.sender) >= 150, "Insufficient tokens");
            uint a = balanceOf(msg.sender)/150;
            require(quantity <= a, "This much quantity cannot be purchased");
            _burn(msg.sender, 150*quantity);
            string memory NFTId = "Amazon Coupons";
            redeemOptions[msg.sender] = RedeemOption(NFTId, quantity,choice);
        } 
        else if (choice == 3) {
            require(balanceOf(msg.sender) >= 200, "Insufficient tokens");
            uint a = balanceOf(msg.sender)/200;
            require(quantity <= a, "This much quantity cannot be purchased");
            _burn(msg.sender, 200*quantity);
            string memory NFTId = "Custom merch";
            redeemOptions[msg.sender] = RedeemOption(NFTId, quantity,choice);
        }
        else if (choice == 4) {
            require(balanceOf(msg.sender) >= 250, "Insufficient tokens");
            uint a = balanceOf(msg.sender)/250;
            require(quantity <= a, "This much quantity cannot be purchased");
            _burn(msg.sender, 250*quantity);
            string memory NFTId = "Smart Watch";
            redeemOptions[msg.sender] = RedeemOption(NFTId, quantity,choice);
        }
    }

    function decimals() override public pure returns(uint8){
        return 0;
    }
     function balanceOf(address account) public view override returns (uint) {
        return super.balanceOf(account);
    }
}
