// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Sample {
    function arithmetic(uint a, uint b) public pure returns(uint sum, uint product){
            sum = a + b;
            product = a * b;
    }

    function taker(uint a, uint b) public pure returns(uint sum, uint product){
        return(a+b, a*b);
    }
}