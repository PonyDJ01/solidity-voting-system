# Solidity Voting System

A simple, secure, on-chain voting system smart contract written in Solidity.

## Features

- Add candidates (admin only)
- One address = one vote (prevent double voting)
- Transparent vote tracking stored on-chain
- Anyone can view candidate names and vote counts

## Technologies

- Solidity ^0.8.0
- Remix IDE for testing & deployment
- [MIT License](LICENSE)

## How It Works

### Contract Owner

- The address that deploys the contract becomes the admin.
- Only the admin can add candidates.

### Voting Logic

- Users can vote for a candidate by index.
- Each address can vote only once.
- Voting is tracked via a `mapping(address => bool)`.

## Contract Functions

| Function              | Description                                 |
|-----------------------|---------------------------------------------|
| `addCandidate(name)`  | Adds a new candidate (admin only)           |
| `vote(index)`         | Vote for a candidate by their index         |
| `getCandidate(index)` | View a candidate's name and total voteCount |
| `hasVoted(address)`   | Check if an address has voted               |
| `getCandidateCount()` | Get the number of candidates                |

## Screenshots

### Add Candidate
![Add Candidate](remix_screenshots/01_addCandidate.png)

### Vote
![Vote](remix_screenshots/02_vote.png)

### Check Result
![Check Result](remix_screenshots/03_getCandidate.png)

### Confirm Voted
![Confirm Voted](remix_screenshots/04_hasVoted.png)

## License

This project is licensed under the [MIT License](LICENSE).
