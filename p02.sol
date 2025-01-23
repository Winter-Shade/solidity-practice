//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract SimpleStorage{
    uint public favoriteNumber; //0

    function store(uint _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }
    
    function test1() public pure returns(uint256){
        uint256 testVar = 5;
        return testVar;
    }

    // a pure or view function will incur gas costs only if it is called from another function which modifies the state of the contract
    
    // view, pure
    // view - read state from the blockchain, disallow updating states
    // pure - disallow reading and modifying states
    
    //visibility types
    /*
    - public - equivalent to creating a getter function
    - private - only inside current contract
    - external - used for only functions (visible only from outside a contract)
    - internal (default) : current contract and its inherited children
    */
}
