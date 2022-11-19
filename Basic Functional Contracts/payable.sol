// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;
//smart contract to send and recieve eth from external addresses
contract PayableExample {
   address payable public owner ;
   address payable public reciever ;
   uint public contractBalance ;
   uint public RecieverBalance;
   constructor() {
       owner = payable(msg.sender);
       contractBalance = owner.balance;
       RecieverBalance = reciever.balance;
   }
   
   function sendETH(uint tosend) public payable {
       require(owner.balance > tosend , "Low balance");
       contractBalance = contractBalance - tosend ;
       
       RecieverBalance = RecieverBalance + tosend ;
   }
   function recieverSetter(address payable _reciever) public {
       reciever = _reciever ;
       RecieverBalance = reciever.balance;
   }
   function currentRecBal() public view returns(uint){
       return (reciever.balance);
   }
   
   
  // function reciever(uint _toget , address payable sender) public payable returns(uint){
       //return (contractBalance = contractBalance + _toget );
   //}
}

