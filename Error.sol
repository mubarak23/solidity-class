// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract Errors {
    address[] public users;

    function addUser(address _addr) external {
        // require(_addr != 0x0000000000000000000000000000000000000000, "We dont Accept Zero Address");
        // efficient way
        // require(_addr != address(0), "We dont Accept Zero Address");

        // 
        // if(_addr == address(0)){
        //     revert("Zero Address WAhala")
        // }
        assert(_addr != address(0));
        users.push(_addr);
    }
}