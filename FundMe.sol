
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;



contract FundMe {

    uint256 public  minUsd = 5;

    function fund () public payable {

        require(msg.value > minUsd , "Didn't send enough eth"); // send atleast one eth 1 eth = 1e18 wei

        // a revert undos any action that have been done , and send the remaining gas back



    }
    
}