// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract Structs {

    struct Student {
        string name;
        uint id;
        bool isMale;
        string lang;
    }
    mapping(address => Student) students;
    uint id = 0;
    function  newStudent( string memory _name, bool _isMale, string memory _lang) external {
         Student memory tempStruct = Student(_name, id, _isMale, _lang);
         students[msg.sender] = tempStruct;
    }
}