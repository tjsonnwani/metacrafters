// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
// creating state variables here which are public
string public tokenname = "tanuj"; 
string public tokenid = "india"; 
uint public totalSupply = 0;

// mapping variable here
mapping(address => uint) public wallet_balance;

/*minting function */
function minting_token(address _add, uint _val) public {  
    totalSupply += _val; 
    wallet_balance[_add] += _val;
}

// burning function
function burning_token(address _add, uint _val) public {
    if (wallet_balance[_add]>_val){
        totalSupply -= _val;
        wallet_balance[_add] -= _val;
    }
}
}
