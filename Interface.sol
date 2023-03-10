// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract IdGenerator {
    uint public id = 0;

    function  increment() external {
        id +=1;
    }
}

interface IIdGenerator {
    function id() external view returns(uint);

    function increment() external;
}

contract interface{
    address IIdGen;
    constructor(address _IIdgen){
        IIdGen = _IIdgen;
    }

    function getCurrentId() external view returns(uint){
        uint currentId = IIdGenerator(IIdGen).id();
        return currentId;
    }
}