// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract MubarakToken{

    string public name;
    string public symbol;
    uint public decimal = 8;

    uint256 totalSupply;

    mapping balanceOf(address => uint) balance;
    mapping(address => mapping(address => uint256)) _allowance

    event Transfer(address indexed _from, address indexed _to, uint256 _value)
    event Approval(address indexed _owner, address indexed _spender, uint256 _value)
    function balanceOf(address _owner) public view returns(uint256){
        return balance[_owner]
    }

    function transfter(address _to, uint256 _value) public returns (bool success){
        require(balanceOf[msg.sender] >= _value, "You dont have enough balance")
        balance[msg.sender] -= _value
        balance[_to] += _value
        return true
    }

    function transfterFrom(address _from, address _to, uint256 _value ) public returns (bool success){
         require(balanceOf[msg.sender] >= _value, "You dont have enough balance")
          balance[_from] += _value
           balance[_to] += _value
           return true
    }

    function allowance(address _owner, address _spender) public view returns (uint256 remaining){
        return _allowance[_owner][_spender]
    }

    function burn(uint256 _amount) public {
        require(balance[msg.sender] >= _amount)
        
        transfter(address[0])
    }
}