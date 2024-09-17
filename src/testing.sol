// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleVote {
    uint256 public yesVotes;
    uint256 public noVotes;

    mapping(address => uint256) public hasVoted;
    mapping(address => uint256) public voteChoice;

    function yesVotes() public {
        require(!hasVoted[msg.sender], "bro, you never vote o");

        yesVotes++;
        hasVoted[msg.sender] = true;
        voteChoice[msg.sender] = false;
    }

    function noVotes() public {
        require(!hasVoted[msg.sender], "bro, you never vote o");

        noVotes++;
        hasVoted[msg.sender] = true;
        voteChoice[msg.sender] = false;
    }
}


