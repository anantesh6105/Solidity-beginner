# Minting And Burning of Tokens in Solidity.

This is a simple solidity smart contract for creating and burning tokens using the functions "Mint" and "Burn". 

## Description

The solidity smart contract is named Anantesh and is an example for the implementation of minting and burning functions in a contract.
We have named our token as "HADES" and its abbrivation as "HDX". The contract has 2 functions - "mint" and "burn", for minting and burning of tokens. 

The burn function has an if conditional statement to ensure that the amount of tokens to be burned does not exceed the balance of the account.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., myproject.sol). Copy and paste the following code into the file:

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
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.9" (or another compatible version), and then click on the "myproject.sol" button.

Click on the "Compile" button to compile the smart contract code. Verify that the compilation is successful without any errors.

In the "Deploy & Run Transactions" panel on the right-hand side of the Remix IDE, select the desired network environment (e.g., JavaScript VM or Injected Web3).

Click on the "Deploy" button to deploy the smart contract.
Once the contract is deployed, you will see the contract's details, including the contract address, in the "Deployed Contracts" section.

Interact with the contract by calling the different functions.

Calling the Tokenname function gives you the name of the token, in this case, "HADES".

Calling the TokenAbrriv function gives its abbrivation, "HDX".

Then, you can mint and burn tokens by calling the mint and burn function respectively and providing the account address and the respective number of tokens to be minted or burned.

Provide you account address in the "balance" function to get the address of the account.

## Authors

Anantesh G

anantesh6@gmail.com

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
