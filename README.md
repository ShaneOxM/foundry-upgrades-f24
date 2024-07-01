# Upgradable Smart Contracts Example

This project demonstrates the implementation of upgradable smart contracts using the OpenZeppelin Contracts Upgradeable repository. It serves as a practical example for developers looking to understand and apply upgradeable patterns in their Ethereum smart contracts to ensure future-proofing and flexibility in their blockchain applications.

## Features

- Utilizes OpenZeppelin's upgradeable contracts for secure, future-proof smart contract development.
- Includes example scripts for deploying and interacting with smart contracts on Ethereum.
- Provides a foundation for building complex, upgradeable systems on the blockchain.

## Prerequisites

Before you begin, ensure you have installed:

- [Node.js](https://nodejs.org/)
- [Foundry](https://getfoundry.sh/)

## Getting Started

1. Clone the repository:
   ```shell
   git clone <repository-url>

2. Install Dependencies:
    ```shell
    npm install

3. Compile the Smart Contracts:
    ```shell
    forge build

## Usage

### Anvil

Start a local Ethereum node for testing. Anvil is a local Ethereum node designed for development, making it easy to deploy contracts and run tests:

```shell
anvil
```

### Deploy

Deploy the example `Counter` smart contract to a live network. This command uses the `forge` CLI to run a deployment script located in the `script` directory:

```shell
forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

Interact with deployed contracts using `cast`. `Cast` is a Swiss Army knife for Ethereum developers, allowing you to query and interact with the blockchain:

```shell
cast <subcommand>
```

### Help

For more information on the commands and their options, use the `--help` flag:

```shell
forge --help
anvil --help
cast --help
```

### Credits 

This project was guided by the work of Cyfrin Updraft. For more information and resources, visit the original repository:

[Foundry-Full-Course](https://github.com/Cyfrin/foundry-full-course-cu)

