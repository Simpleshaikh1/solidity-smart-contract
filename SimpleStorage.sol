// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; //solidty version

contract SimpleStorage {
    //favoriteNumber gets initialized to 0 if no value is given.

    uint256 myFavoriteNumber; //0

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    //dynamic array
    Person[] public listOfPeople; //[]

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public  virtual{
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push( Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}