// SPDX-License-Identifier: MIT

pragma solidity  ^0.8.0 ;

contract functionDemo {
    //getter function
    uint year = 2022;
    address public myAddr = msg.sender;//declared address
    function getYear() public view  returns(uint) {
        return year ;
    }
    //setter function
    function setYear(uint _year) public {
        year = _year ;
    }
    function getBalance() public view returns(uint){
        return myAddr.balance;
    }
}