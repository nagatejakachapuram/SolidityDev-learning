// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
import {SimpleStorage} from "./SimpleStorage.sol";
contract StorageFactory{
    // contract visibility and variable name
    SimpleStorage[] public listofSimpleStorageContracts;

    function createSimpleStorageContract() public{
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listofSimpleStorageContracts.push(newSimpleStorageContract);
    }
    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // Address 
        // ABI - Application Binary Interface
        SimpleStorage mySimpleStorage = listofSimpleStorageContracts[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);

    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        SimpleStorage mySimpleStorage = listofSimpleStorageContracts[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }
}