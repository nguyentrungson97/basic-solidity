// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// View Function: can read data in blockchain 
// Pure Function: cant read

contract ViewAndPureFunction {

    uint public number = 2; // State variable
    
    function viewFn() external view returns (uint){
        return number;
    }

    function pureFn() external pure returns (uint){
        // return number; => error => pure fn cant know state variables, and global variable
        // only can read local variables
        uint num = 3;
        return num;
    }
}