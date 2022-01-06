// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// State variables: will be store to blockchain
// Local variables: only in the function, when function done they will be gone

contract Variables {

    address public Addr; // State variable
    
    function getAddress() external view returns (address, uint, uint, uint){
        uint256 a = 10; // Local variables
        // below is global variables
        address newAdd = msg.sender;
        uint256 time = block.timestamp;
        uint256 number = block.number;
        return (newAdd, a, time, number);
    }
}