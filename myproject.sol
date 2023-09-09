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
