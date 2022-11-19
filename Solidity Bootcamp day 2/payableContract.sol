// SPDX-License-Identifier: MIT

pragma solidity  ^0.8.0 ;

contract payableOne {
    
    address public Owner = msg.sender;
    address public reciever ;
    uint public amount ;
    uint public recieverBalance = reciever.balance;
    uint public OwnerBalance = Owner.balance;
    uint public balance;
 address adddr;
    
    function sendToAddr(address payable _addr) public {
        reciever = _addr;
    }
    function sendAmount(uint _amount) public {
        amount = _amount;
    }
    function sendETH() public payable {
        recieverBalance = reciever.balance + amount;
        OwnerBalance = OwnerBalance - amount ;
    }

    function getContractBalance() public view returns(uint){
        return address(this).balance;
    }

}