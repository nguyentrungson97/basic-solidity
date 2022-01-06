// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Data type : value  and references
// external can be call outside contract
// pure not write anything to blockchain
contract Function {
    function add(uint x, uint y) external pure returns (uint){
        return x + y;
    }
}