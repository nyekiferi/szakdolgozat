# Ethereum development network

The network provides an easy-to-start/stop local Ethereum node for testing contracts and Ethereum-dependent services independently from other projects. 

## Pre-requisites

* A relatively fresh Docker version (tested on `20.10.8`)
    * The [BuildKit feature](https://docs.docker.com/develop/develop-images/build_enhancements/) is required, available since `18.09`.

## Starting the network

Run the `start-network.sh` script from the `ethereum-devenv` directory.

It will initialize the Ethereum node and start the following services:
1. Ethereum RPC API, mapped to `http://localhost:8545`
1. Blockscout Ethereum chain explorer, mapped to `http://localhost:4000` (needs a few seconds)

The Ethereum node contains the following unlocked ("built-in") addresses, bootstrapped with a LOT of wei:
1. `0xec709e1774f0ce4aba47b52a499f9abaaa159f71`
1. `0x36e146d5afab61ab125ee671708eeb380aea05b6`
1. `0x06fc56347d91c6ad2dae0c3ba38eb12ab0d72e97`
1. `0x9d624f7995e8bd70251f8265f2f9f2b49f169c55`
1. `0x2666a32bf7594ab5395d766dcfbf03d557dab538`

## Sample contracts

Some sample contracts for testing and "mocking" can be found in the `ethereum-devenv/contracts` directory:
1. `TestNFT`: A simple ERC721-compliant contract to test NFT-dependent services
1. `TestToken`: A simple ERC20-compliant contract to test token-dependent services