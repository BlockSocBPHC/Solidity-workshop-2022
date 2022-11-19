// SPDX-License-Identifier: MIT 

pragma solidity >= 0.5.0 < 0.8.17 ;

contract mathOperation {
  
    constructor() {
    }

    function add(uint _a , uint _b) public pure returns(uint){
       return _a + _b;
    }
    function multiply(uint _a , uint _b) internal pure returns(uint){
       return _a*_b;
    } 
    function divide(uint _a, uint _b) private pure returns(uint) {
        return  _a/_b ;
    }
    function difference (uint _a , uint _b) external pure returns(uint){
        return _a - _b ;
    }

}

// contract addAndMultiply {
//     mathOperation add = new mathOperation();
//     function ans() public view returns(uint) {
//         //As multiply() is a internally declared function we get an error here. 
//         return add.add(10,20) * add.multiply(10,20);
//     }
// }

contract addAndDivide is mathOperation {
    function ans() public pure returns(uint) { 
        //mathOperation myAns = new mathOperation();
        return (add(10,20) * multiply(10,20));
    }
}