// SPDX-License-Identifier: MIT 

pragma solidity >= 0.5.0 < 0.8.17 ;

contract myArray {
    //declaring a static array
    uint[10] numbers ;
    //initialising 
    string[5] weekDays = ["monday" , "tuesday" , "wednesday" , "thursday" , "friday" ];

    function getDay(uint _index) public view returns(string memory) {
        require(_index <= 4 , "Enter valid index");
        return weekDays[_index];
    }
    function setNumbers(uint _index , uint _num) public {
        require(_index <= 19 , "ebtre valid index");
        numbers[_index] = _num ;
    }
    function showArr() public view returns(uint[10] memory){
        return numbers;
    }
}