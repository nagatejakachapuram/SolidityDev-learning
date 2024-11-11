// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26; //stating our version

contract SimpleStorage {
    // Basic types: boolean, unit, int, address, array, bytes

    uint256  myfavNum; // default is 0

    // uint256[] listofFavnumbers; // [0,67,45]
    struct Person{
        uint256 favNumber;
        string name;
    }
    // Dynamic array
    Person[] public listofPeople;

    // madrid -> 99
    mapping(string => uint256) public nameTofavNumber;

    function store(uint256 _favNum) public virtual {
        myfavNum = _favNum;
    }
    
    // view, pure keywords = just read state
    function retrieve() public view returns (uint256){
        return myfavNum;
    }

    function addPerson(string memory _name, uint256 _favNumber) public{
        listofPeople.push(Person(_favNumber,_name));
        nameTofavNumber[_name] = _favNumber;
    }
}