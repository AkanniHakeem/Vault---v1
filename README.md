# Vault v1

A simple Ethereum smart contract that allows users to deposit and withdraw ETH while tracking individual balances and rejecting direct ETH transfers.

## Features

- Users can deposit ETH into the Vault
- Tracks each user's balance using a mapping
- Users can withdraw their deposited ETH
- Prevents withdrawals exceeding a user's balance
- Rejects direct ETH transfers
- Emits events for deposits and withdrawals

## Concepts Used

- Solidity
- `mapping`
- `msg.sender`
- `msg.value`
- `payable`
- `require`
- `receive()`
- Events
- Low-level `.call`
- Checks-Effects-Interactions pattern

## How It Works

### Deposit

Users deposit ETH through the `deposit()` function. The contract records the amount deposited using `msg.value`.

### Withdraw

The contract:

1. Checks whether the user has enough balance
2. Updates the user's balance
3. Sends ETH using `.call`
4. Checks whether the transfer was successful
5. Emits a withdrawal event

### Direct ETH Transfers

The `receive()` function rejects ETH sent directly to the contract. Users must use the `deposit()` function.

## Author

Built by AkanniHakeem while learning Solidity and smart contract development.
