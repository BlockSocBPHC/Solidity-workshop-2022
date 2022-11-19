// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0 ;

contract getterSetterFun {
    uint a;
    uint b;

    constructor() {
        a = 2;
        b = 5;
    }

    function setAandB(uint _a, uint _b) public {
        a = _a;
        b = _b;
    }

    function add() public view returns(uint) {
        return a+b;
    }

    function AandB() public view returns(uint,uint) {
        return (a,b);
    }

}