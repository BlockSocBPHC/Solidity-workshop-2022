// SPDX-License-Identifier: MIT

pragma solidity  ^0.8.0 ;
//declare 2 contracts A and B 
// Try to call function in contract A 
contract A {
    uint num = 10;

    function fun1() public view returns(uint) {
        return num ;
    }
    function fun3(uint age) public {//setter 

    }
}

contract B is A {
    function fun2 () public view returns(uint) {
        //num = 30;
        //A newA = new A() ;
    }
    function fun5() public {
        A myA = new A();
    }
}