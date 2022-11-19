// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0 ;

contract demo {
    uint private age ;
    address myAddress = msg.sender;

    constructor() {
        age = 20 ;
    }

    // function getAge() public view returns(uint) {
    //     return age;
    // }

    function setAddress(address _myAddress) public {
        myAddress = _myAddress;
    } 

    function getBalance () public view returns(uint) {
        return myAddress.balance;
    }

    // function setAge(uint _age) public {
    //     age = _age;
    // }






} 