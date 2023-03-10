// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

 contract Sample {
      struct Student {
        address addr;
        string name;
        uint id;
        bool isMale;
        string lang;
    }

    Student[] public students;

    function addNewStudent(address _addr, string memory _name, bool _isMale, uint _id, bool, string memory _lang) external {
        Student memory tempStruct = Student(_addr, _name, _id, _isMale, _lang);
        students.push(tempStruct);
    }
 }