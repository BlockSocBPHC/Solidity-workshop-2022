// SPDX-License-Identifier: MIT

pragma solidity >= 0.5.0 < 0.8.17 ;
//wallet registeration and balance contract
contract myMapping {
    address public owner = msg.sender;
    mapping (address => uint) walletBalance ;
    function Register () public payable{
        require(owner != msg.sender , "this is owners address");
        walletBalance[msg.sender] = msg.value ;
    }
    function addBalance(uint _amount) public payable {
        walletBalance[msg.sender] = walletBalance[msg.sender] + _amount;
    }
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
}