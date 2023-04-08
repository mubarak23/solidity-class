// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./StorageDemo.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;
    function createSimpleStorageContract() public {
       SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function storageFactoryStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // long way 1
        // SimpleStorage(simpleStorageArray[_simpleStorageIndex]);
        // SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        // simpleStorage.store(_simpleStorageNumber);

        // another way 
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    function storageFactoryGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        // Long Way 1
        // SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        // return simpleStorage.retrieve();
        // another way 
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}