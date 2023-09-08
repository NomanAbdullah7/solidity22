// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract SimpleStorage {
    uint256 private data; 

    event DataStored(uint256 indexed newValue); 

    constructor() {
        data = 0;
    }
    
  
    function set(uint256 newValue) public {
        data = newValue;
        emit DataStored(newValue);
    }
    

    function get() public view returns (uint256) {
        return data;
    }
}