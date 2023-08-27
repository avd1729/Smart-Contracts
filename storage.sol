// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Storage {
    uint256 public favoriteNumber;

    uint256[] list;

    struct person {
        uint256 favnum;
        string name;
    }

    person public friend1 = person(88,'Joe');
    person public friend2 = person({favnum: 88,name: 'Doe'});

    person[] public listofppl; //empty array
    person[3] public staticlistofppl; 

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    // view , pure (only reading - no transaction)
    function retrieve() public view returns (uint256){
        // we cannot modify favoriteNumber
        return favoriteNumber;
    }

    function addperson(string memory _name , uint256 _favoriteNumber) public {
        listofppl.push(person(_favoriteNumber,_name));
    }
}




