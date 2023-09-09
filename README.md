# Minting And Burning of Tokens in Solidity.

This is a simple solidity smart contract for creating and burning tokens using the functions "Mint" and "Burn". 

## Description

The solidity smart contract is named Anantesh and is an example for the implementation of minting and burning functions in a contract.
We have named our token as "HADES" and its abbrivation as "HDX".

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ashtokens.sol). Copy and paste the following code into the file:

```
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract Anantesh {

string public Tokenname = "HADES";
string public TokenAbbriv = "HDX";
uint public TotalSupply = 0;

mapping(address => uint) public balance;

function mint (address adrs, uint input) public {
    TotalSupply += input;
    balance[adrs] += input;
}

function burn (address adrs, uint input) public {
    if(balance[adrs] >= input){
        TotalSupply -= input;
        balance[adrs] -= input;
    }
    
    }
}

```
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.9" (or another compatible version), and then click on the "ashtokens.sol" button.

Click on the "Compile" button to compile the smart contract code. Verify that the compilation is successful without any errors.

In the "Deploy & Run Transactions" panel on the right-hand side of the Remix IDE, select the desired network environment (e.g., JavaScript VM or Injected Web3).

Click on the "Deploy" button to deploy the smart contract.
Once the contract is deployed, you will see the contract's details, including the contract address, in the "Deployed Contracts" section.

Interact with the contract:

a. Click on the Tokenname and tokenAbbriv to get the name of the token you have set and its abbrivation.

b. Also click on the totalSupply to display the initial supply of your token.

c. Mint new tokens by calling the mint function and providing an address and a value as parameters. This function adds the specified number of token to your account.

d. Burn tokens by calling the burn function and providing an address and a value as parameters. This function reduces the total supply of token by burning the specified number of tokens from the account.

e. View token balances by accessing the balances mapping and providing an address as the key.


## Authors

Asha Raju

aditya.asha@gmail.com

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
