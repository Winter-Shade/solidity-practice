//SPDX-License-Identifier: MIT
// @zkSync: enable

pragma solidity ^0.8.24;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{
    
    SimpleStorage [] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        listOfSimpleStorageContracts.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public{
        // Address
        // ABI : Application Binary Interface
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }

}

