# ChainNDA Project Plan

## Problem

Traditional NDAs are often stored in centralized systems and can be difficult to independently verify.

## Solution

Build a Solidity smart contract that records NDA-related information on the Ethereum blockchain and allows the involved parties to confirm acceptance.

## Version 1 Features

- Create an NDA
- Record the parties involved
- Store a hash representing the NDA terms
- Allow both parties to accept the agreement
- Verify whether both parties have accepted
- Verify that an NDA exists

## Current Progress

- [x] Create ChainNDA Solidity contract
- [x] Define the two parties
- [x] Store the NDA terms hash
- [x] Add agreement acceptance functionality
- [x] Add full acceptance verification

## Future Development

- Add NDA creation date
- Add events for important contract actions
- Write automated tests
- Deploy to an Ethereum test network
- Build a simple frontend to interact with the contract
