// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Structs {
    struct Car {
        string model;
        uint256 year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    function demo() external {
        Car memory toyota = Car("toyota", 1999, msg.sender);
        Car memory lambo = Car({year: 1989, model: "lambo" owner: msg.sender});
        Car memory testa;

        testa,model = 'tesla';
        testa,year = 2010;
        testa,owner = msg.sender;
        
        cars.push(toyota);
        cars.push(lambo);
        cars.push(testa);

        cars.push(Car('ferrari',2020,msg.sender));
   
        Car storage car = cars[0];
        car.year = 1990;
        delete _car.owner;

        delete cars[1]



    }
}
