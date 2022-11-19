// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0 ;

contract myFunctons {//voting contract
    uint public vote1Count;
    uint public vote2Count;
    string public candidate1 ;
    string public candidate2;
    address owner = msg.sender;

    constructor () {
        vote1Count = 0 ;
        vote2Count = 0 ;
    }
    //we use setter functions to set the candidate names
    function set1Candidate (string memory _candidate1, string memory _candidate2) public {
        candidate1 = _candidate1;
        candidate2 = _candidate2;
    }
    //now we need to take in votes for both the candidates from different people/addresses
    function getVotes1() public payable {
        require(msg.sender!=owner);
        vote1Count++;
    }
    //votecount for candidate 2
    function getVotes2() public payable {
    require(msg.sender!=owner);
    vote2Count++;
    }

}