// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

// Get Funds from Users
// Withdraw Funds
// Set the minimum funding value in USD

import "./PriceConverter.sol";


contract FundMe {

    using PriceConverter for uint256;
    uint256 public minimumUSD = 50 * 1e18;
    address[] public funders;
    mapping (address => uint256) public addressToAmountFunded;

    address public owner;


    constructor(){
        owner = msg.sender;
    }
// anyone can call this function
// contract can hold fund
    function fund() public payable{
            require(msg.value.getConversionRate() > minimumUSD, "Did not send enough ethers");
            funders.push(msg.sender);
            addressToAmountFunded[msg.sender] = msg.value;
         // require(msg.value.getConversionRate() > minimumUSD, "Did not send enough ethers");
        // 1e18 == 1 * 10 ** 18 = 1000000000000000000

        // revert
        // undo all action before and send back the remaining gas fee

    }

   
    function Withdraw() public onlyOwner{
        for(uint256 funderIndex = 0; funderIndex < funders.length; funderIndex++){
           address funder = funders[funderIndex];
           addressToAmountFunded[funder] = 0;
        }
        // reset array
        funders = new address[](0);
        // withdraw fund 
        // msg.sender = payable address
        
        // transfer
        // payable (msg.sender).transfer(address(this).balance);

        // send 
        // bool onSuccess = payable (msg.sender).send(address(this).balance);
        // require(onSuccess, "Send Fail");

        // call (best approach)
        // (bool callSuccess, bytes memory dataReturn) = payable (msg.sender).call{value: address(this).balance}("");
        (bool callSuccess, ) = payable (msg.sender).call{value: address(this).balance}("");
        require(callSuccess, "Call Fails");
    }

    modifier onlyOwner {
        require(msg.sender == owner, "Sender is not allowed");
        _;
    }
}