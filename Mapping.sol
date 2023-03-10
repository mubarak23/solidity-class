// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Mappings {
    mapping(uint => string) students;
    mapping(address => uint) public balance;
    mapping(uint => address) public idToUser;
    mapping(address => uint) public userToId;
    uint id = 0;
    function addStudent(uint _id, string memory _name) public {
        students[_id] = _name;
    }

    function updateBalance(uint _amount) public returns(address){
        balance[msg.sender] += _amount;
        return msg.sender;
    }
    // function viewBalance() public returns (uint calldata){
    //     uint calldata myBalance = balance[msg.sender];
    //     return myBalance;
    // }

    function viewStudent (uint _id) public view returns (string memory){
        string memory studentName = students[_id];
        return studentName;
    }

    function addAddress(address _addr) public {
        id++;
        idToUser[id] = _addr;
        userToId[_addr] = id;
    }

    function removeAddress (uint _id) public {
        address temp = idToUser[_id];
        idToUser[_id] = address(0);
        userToId[temp] = 0;
    }
}