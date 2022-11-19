// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.0 ;

contract demo {
    uint age = 20 ;
    address myAddr = msg.sender;
    //age = 1 ;
    constructor () {
        age = 32 ;
    }
}