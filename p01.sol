// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19; //stating our version 
// 0.8.19 or anything above will work
// >=0.8.19 <0.9.0 can also do this

contract SimpleStorage {
    // basic types: boolean, uint, int, address, bytes
    bool hasFavoriteNumber = false;
    uint256 favoriteNumber = 12; // uint256 specifies that the variable should be stored in 256 bits
    // if we don't specify 256, then by default it will be stored in 256 bits

    int256 favoriteNumber2 = -12;
    string favoriteNumberInText = "twelve";
    address myAddress = 0x702Cb9FFAEFf1B265f8Fdd43e3Ca99b0E812b23e;
    bytes32 favoriteBytes32 = "cat"; // largest bytes is bytes32
}




