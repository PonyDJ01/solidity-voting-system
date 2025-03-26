// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract VotingSystem {
    // 定义候选人结构体
    struct Candidate {
        string name;
        uint voteCount;
    }

    // 候选人数组
    Candidate[] public candidates;

    // 记录谁投过票（防止重复投票）
    mapping(address => bool) public hasVoted;

    // 合约部署者（通常作为管理员）
    address public admin;

    // 构造函数：部署时指定 admin
    constructor() {
        admin = msg.sender;
    }

    // 添加候选人（只有管理员能调用）
    function addCandidate(string memory _name) public {
        require(msg.sender == admin, "Only admin can add candidates");
        candidates.push(Candidate(_name, 0));
    }

    // 投票函数：根据候选人索引投票
    function vote(uint _index) public {
        require(!hasVoted[msg.sender], "You have already voted");
        require(_index < candidates.length, "Invalid candidate index");

        candidates[_index].voteCount += 1;
        hasVoted[msg.sender] = true;
    }

    // 查询候选人信息
    function getCandidate(uint _index) public view returns (string memory name, uint voteCount) {
        require(_index < candidates.length, "Invalid candidate index");
        Candidate memory c = candidates[_index];
        return (c.name, c.voteCount);
    }

    // 获取候选人总数
    function getCandidateCount() public view returns (uint) {
        return candidates.length;
    }
}