# ETH_AVX_Module_4
# Degen Gaming Token
Degen Gaming Token is an ERC20 token deployed on the Avalanche blockchain. This token is designed to enhance the gaming experience within the Degen Gaming platform by allowing players to earn and exchange tokens for in-game rewards and items.


## Deployment
### To deploy this contract you just need to copy the content of the `degenToken.sol` file onto your Remix IDE Environment.

### The import function inside the file automatically installs all the secondary files in your workspace after compiling.
### Note: - Ensure that the Metamask wallet is set to the Fuji C-chain network and the account has AVAX( You can send 2 test AVAX onto your account from `https://core.app/tools/testnet-faucet/?subnet=c&token=c` every day).
### Now select Injected Environment on the deploy page of our contract. YOu will be redirected to the Metamask account. Accept and confirm the access.
### Now we can deploy our contract and move to the next step.

## Interacting with the Contract

To interact with the contract, you can use any Ethereum wallet or developer tools that support the Avalanche network. Connect to the Avalanche network in your wallet or development environment and use the contract address to interact with the Degen Gaming Token.
(For this Project I have used remix)

1. Go to https://remix.ethereum.org/

2. Load the contract in the workspace and compile it in compile section of remix ide.

3. In the Deploy and Run Transactions section of Remix IDE, in the environments section select injected provider.

Note: make sure your wallet is connected to the Avalanche testnet fuji and remix IDE.

4. Your accounts in your wallet will be available in account option and you can switch between accounts.

5. You can Deploy your contract by clicking on deploy option or copying address from https://testnet.snowtrace.io/ and paste it in AtAddress block.

6. You can interact with functions by providing the argument and clicking on transact.

## Features

### `Minting New Tokens`: The contract owner has the ability to mint new tokens and distribute them to players as rewards.

### `Burning Tokens`: Users have the option to burn their tokens if they are no longer needed, reducing the token supply.

### `Transferring Tokens`: Players can transfer their tokens to other addresses within the token contract.

### `Redeeming Tokens`: Players can redeem their tokens for in-game rewards and items available in the Degen Gaming platform.

### `Checking Token Balance`: Players can easily check their token balance using the provided functions in the contract.


## Authors

Aditya Bhatt
adityabhatt05101007@gmail.com

## License

This project is licensed under the MIT License - see the LICENSE.md file for details

## Video Walkthrough

https://drive.google.com/drive/folders/1WksLk9hsPfdqpd50OSGGfoE-wmsII7Ex?usp=drive_link
