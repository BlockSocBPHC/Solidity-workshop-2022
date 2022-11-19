// SPDX-License-Identifier: MIT 

pragma solidity >= 0.5.0 < 0.8.17 ;

contract A {
    address public owner ;
    address public myaddress ;
    uint public value ;

    constructor() payable {// we need to declare constructor payable to use msg.value global var
        owner = msg.sender;
        value = msg.value;
    }

    function myAddressUpdate() public{
        myaddress = msg.sender;
    }
}