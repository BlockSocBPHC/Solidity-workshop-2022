// SPDX-License-Identifier: MIT

pragma solidity >= 0.5.0 < 0.8.17 ;

contract myStruct {
    
    struct vehicle {
        string color ;
        string model;
        string vehicleType;
        uint price;
        uint maxSpeed ;
    }
    vehicle public car ;
    constructor() payable {
        car.color = "blue";
        car.vehicleType = "car";
        car.model = "verna";
        car.price = msg.value;
        car.maxSpeed = 300;
    }

}