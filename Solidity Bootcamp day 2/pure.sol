// SPDX-License-Identifier: MIT

pragma solidity  ^0.8.0 ;

contract pureEx {
    function getSum(uint _a , uint _b) public pure returns(uint) {
        return (_a + _b);
    }
}