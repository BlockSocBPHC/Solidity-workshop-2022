// SPDX-License-Identifier: LIT

pragma solidity >= 0.5.0 < 0.8.17 ;

contract DynamicArr {
    uint[] arr = [1,2,3] ;
    function addElement(uint _num) public{
        arr.push(_num);
    }
    function popItem() public{
        require(arr.length > 0 , "Array is already empty");
        arr.pop();
    }
    function showArray() public view returns(uint[] memory){
        return arr;
    }
    //function find() public 
}
