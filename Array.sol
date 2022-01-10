// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Array {
    // Several ways to initialize an array
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];
    // Fixed sized array, all elements initialize to 0
    struct Transactions {
        address addr;
        uint value;
    }

    struct Funders {
        address addr;
        uint value;
    }

    Transactions[] public transactions;
    mapping(address => Funders) public funders;

    uint[10] public myFixedSizeArr;

    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    function checkFundersExist(address _checkaddr) public view returns (bool){
        return funders[_checkaddr].addr == _checkaddr ;
    }

    // Solidity can return the entire array.
    // But this function should be avoided for
    // arrays that can grow indefinitely in length.
    function getArr() public view returns (Transactions[] memory) {
        return transactions;
    }

    function push(address _addr, uint _value) public payable {
        // Append to array
        // This will increase the array length by 1.
        transactions.push(Transactions(_addr, _value));
        if(checkFundersExist(_addr)){
            funders[_addr].value += _value;
        } else {
            funders[_addr] = Funders(_addr, _value);
        }
    }

    function pop() public {
        // Remove last element from array
        // This will decrease the array length by 1
        arr.pop();
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }


    function remove(uint index) public {
        // Delete does not change the array length.
        // It resets the value at index to it's default value,
        // in this case 0
        delete arr[index];
    }
}