// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// interface Calculator{
//     function getResult() external view returns (uint);
// }

// contract Test is Calculator{
//     constructor() public {}
//     function getResult() external view returns (uint){
//         uint a = 5;
//         uint b = 7;
//         uint result = a + b;
//         return result;
//     }
// }

contract SolidityTest {
//    constructor()  public{
//    }
   function getResult() public view returns(uint){
      uint a = 1;
      uint b = 2;
      uint result = a + b;
      return result;
   }
}