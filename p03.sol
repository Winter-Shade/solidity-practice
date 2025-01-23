//SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract CoolStorage{
    uint256[] public listOfNumbers = [99, 124]; 

    // create your own types using - struct

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    // Person public guren = Person(45, 'Guren');
    // Person public guren = Person({favoriteNumber: 7, name: "Guren"});
    Person[] public listOfPeople;

    function addPeople(string memory _name, uint256 _favoriteNo) public{
        listOfPeople.push( Person(_favoriteNo, _name) );
    }
}

