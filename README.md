# Chainlink Node MtR

Nodo de una Red de oráculos descentralizados

## Getting started

Created using remix-ide: Realtime Ethereum Contract Compiler and Runtime. Load this file by pasting this gists URL or ID at https://remix.ethereum.org/#version=soljson-v0.8.7+commit.e28d00a7.js&optimize=false&runs=200&gist=

## Contains

* **docs.chain.link**:

  - [API Request (Contracts examples)](http://gitlab.primary/rcabrales/chainlink-node-mtr/-/tree/master/docs.chain.link/samples/APIRequests)

  - [Basic Operator Contract](http://gitlab.primary/rcabrales/chainlink-node-mtr/-/tree/master/docs.chain.link/samples/ChainlinkNodes/Operator.sol) `Operator.sol` 

  - [Tutorials (first contracts examples)](http://gitlab.primary/rcabrales/chainlink-node-mtr/-/tree/master/docs.chain.link/samples/Tutorials)

* [**Direct Request Jobs examples**](http://gitlab.primary/rcabrales/chainlink-node-mtr/-/tree/master/.jobs). Chainlink nodes require jobs to do anything useful:

  - **Get > Uint256 Job**: Let’s assume that a user makes a request to an oracle to call a public API, retrieve a number from the response, remove any decimals and return uint256.

  - **Get > String Job**: Let’s assume that a user makes a request to an oracle and would like to fetch a string from the response.

  - **Get > Int256 Job**: Let’s assume that a user makes a request to an oracle to call a public API, retrieve a number from the response, remove any decimals and return int256.

  - **Existing Job**: Using an existing Oracle Job makes your smart contract code more succinct. Let’s assume that a user makes a request to an oracle that leverages Etherscan External Adapter to retrieve the gas price.

* **Chainlink Node docker-compose**:
Simple docker-compose-based project **to get quickly up and running** a Chainlink node. It is built using docker-compose using the `1.12.0` chainlink image, `v1.10.1` to  the ethereum/client-go local services and the `latest` postgres image.

## How to use this Chainlink Node docker-compose

1. Clone repository
```
git clone http://gitlab.primary/rcabrales/chainlink-node-mtr
```
2. Review `.env` file and adapt accordingly.

3. Build and run with `docker-compose`

* Build with default values, which you can adapt if needed inside the `Dockerfile`
```
docker-compose up --build
```

* First build with your own build args and then run:

```
$ docker-compose build --build-arg API_USER_EMAIL=my@test.com

$ docker-compose up
```

4. Browse to `localhost:6688` and log in with your credentials.

Default credentials:
- username: `user@example.com`
- password: `PA@SSword1234!567`
- wallet password: `PA@SSword1234!567`

Default Ethereum Services (local):
- ws://ethereum:8546

5. Transfer ETH to Chainlink Node Address (**Important!**)
Testnet LINK and ETH are available at [faucets.chain.link](https://faucets.chain.link/sepolia?_ga=2.46155623.130770896.1677255898-436679307.1674065066). Testnet ETH is also available from several public [faucets](https://faucetlink.to/sepolia).

## Change config

* To **Sepolia** Chainlink Node change env_file root (default):
```
env_file:
      - ./.config/.chainlink-sepolia/.env
```

* To **Goerli** Chainlink Node change env_file root:
```
env_file:
      - ./.config/.chainlink-goerli/.env
```

* To External Ethereum sevices, change `ETH_URL` inside `chainlink.env`. 

## Disclaimer
This is a basic setup to quickly get you up and running with a Chainlink local node for development. Please acknolwedge that this setup does not take into account any node security nor high-availability (HA) settings, therefore cannot be used in production as is.

## Licence

MIT Licence

