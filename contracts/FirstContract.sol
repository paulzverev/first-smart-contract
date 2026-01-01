// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract FirstContract {

    address public me;

    constructor() {
        me = msg.sender;
    }

    function pay() public payable {
        // the balance of the contract will be increased automatically
    }

    function withdraw() public {
        address payable payableMe = payable(me);
        address thisContract = address(this);
        uint contractBalance = thisContract.balance;

        payableMe.transfer(contractBalance);
    }

    function getCurrentBalance() public view returns(uint) {
        return me.balance;
    }
}