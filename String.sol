// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract Strings {
    string name = "mubarak";
    string name1 = "Solomon";

    function comparetwoString() external view returns(bool){
        bool isEqual = keccak256(abi.encodePacked(name)) == keccak256(abi.encodePacked(name1));
        return isEqual;
    }
}