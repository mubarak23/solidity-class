// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

uint constant x = 32 ** 22 + 8;

contract c {
    string constant TEXT = "abc";
    bytes32 constant MY_HASH = keccak256("abc");
    uint immutable decimals;
    uint immutable maxBalance;
    address immutable owner = msg.sender;

    constructor(uint decimal_, address ref){
        decimals = decimal_;
        maxBalance = ref.balance;
    }

    function isBalanaceToHigh(address other) public view returns (bool){
        return other.balance > maxBalance;
    } 
}