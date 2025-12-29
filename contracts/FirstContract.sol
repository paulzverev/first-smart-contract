// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0; // Solidity language version (0.8.something)

contract FirstContract {

    address public me;
    mapping (address => uint) public transactions;

    constructor() {
        me = msg.sender;
    }

    function pay() public payable { // "paybale" means that this function deals with money
        transactions[msg.sender] = msg.value;
    }

    function withdraw() public {
        address payable temporaryMe = payable (me);
        address thisContract = address(this);
        temporaryMe.transfer(thisContract.balance);
    }
}