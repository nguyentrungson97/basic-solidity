// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Data type : value  and references

contract ValueTypes {
    bool public b = true;
    uint public u = 123; 
    // uint = uint256 0 to 2**256 
    // uint8 0 to 2**8

    int public minInt  = type(int).min;
    int public maxInt  = type(int).max;  
    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    bytes32 public b32;
}