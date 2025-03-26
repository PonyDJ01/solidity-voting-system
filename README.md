# On-Chain Voting System (Solidity Project)

This is a basic on-chain voting system built in Solidity. Users can vote once for a candidate, and the result is stored on the blockchain.

## Features

- Add candidates (admin only)
- One address, one vote
- Transparent vote count
- View candidate list & results

## Smart Contract

- Written in Solidity ^0.8.0
- Deployed and tested using [Remix IDE](https://remix.ethereum.org)

## Functions

| Function         | Description                      |
|------------------|----------------------------------|
| `addCandidate()` | Add a candidate (admin only)     |
| `vote()`         | Vote by candidate index          |
| `getCandidate()` | Get candidate name and voteCount |
| `hasVoted()`     | Check if address has voted       |

## How to Deploy

1. Open [Remix](https://remix.ethereum.org)
2. Paste `VotingSystem.sol` into a new file
3. Compile using Solidity 0.8.x
4. Deploy the contract
5. Interact using Remix interface

## Demo Screenshots

### 1. 添加候选人
![Add Candidate](remix_screenshots/manual.jpg)

### 2. 投票
![Vote](remix_screenshots/02_vote.jpg)

### 3. 查看得票
![Get Candidate](remix_screenshots/03_getCandidate.jpg)

### 4. 验证已投票
![Has Voted](remix_screenshots/04_hasVoted.jpg)

## License

MIT