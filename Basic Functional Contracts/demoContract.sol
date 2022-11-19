// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.0 ;

contract demo {
    //Variable declaration and initialization 
    uint public num1; //declaraction
    uint public num2 = 200 ; //declaration and initialization
    address public owner ;
    string myName = "Jinil" ;
    bool public a ;

    constructor() payable {//Declaring constructor which is payable too.
        num1 = 40;
        num2 = msg.value;
        owner = msg.sender;
        myName = "BITS";
    }

    function setmyName(string memory _myName) public {
        myName = _myName;
    }

    function getmyName() public view returns(string memory){
        return myName;
    }


}