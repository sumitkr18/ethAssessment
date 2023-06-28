// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MyToken {
    string public tokenName = "META";
    string public tokenAbbrv = "MTA";
    uint public totalSupply = 0;
    mapping(address => uint) public balances;

    function mint(address recipient, uint value) public {
        totalSupply += value;
        balances[recipient] += value;
    }

    function burn(address sender, uint value) public {
        require(balances[sender] >= value, "Insufficient balance");
        totalSupply -= value;
        balances[sender] -= value;
    }
}
