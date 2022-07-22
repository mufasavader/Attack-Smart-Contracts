// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Meow {
    constructor () payable public {

    }

    function Attack (address payable _attackaddy) public {
        selfdestruct(_attackaddy);
    }
}
