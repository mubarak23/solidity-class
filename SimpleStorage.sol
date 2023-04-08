//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SimpleStorage {
    uint public num;

    uint256 public myNumber;
    // People public person = People({ favoriteNumber: 12, name: "Mubarak"});
    // string Name = "Mubarak";
    // int256 favoriteNegative = -4;
    // address myAddress = 0xDA0bab807633f07f013f94DD0E6A4F96F8742B53;
    // bytes32 favoriteByte = "Berry" 

    mapping(string => uint256) public namesToFavoriteNumber;
    struct People{
        uint256 favoriteNumber;
        string name;
    }

    // uint256[] public favoriateNumbersList;
    People[] public people;

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // People memory newPerson = People({favoriteNumber: _favoriteNumber, name:_name});
        // People memory newPerson = People(_favoriteNumber, _name);
        // people.push(newPerson);
        people.push(People(_favoriteNumber, _name));
        namesToFavoriteNumber[_name] = _favoriteNumber;

    }

    function set(uint _num) public {
        num = _num;
    }
    function get() public view returns(uint) {
        return num;
    }
    function store( uint256 _favoriteNumber) public {
        myNumber = _favoriteNumber;
    }

    function retreive() public view returns(uint256){
        return myNumber;
    }
}