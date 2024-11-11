// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    // +5
    // we can do overrides
    // 2 keywords = virtual, override
    function store(uint256 _newNumber) public override {
        myfavNum = _newNumber +5 ;
    }
}