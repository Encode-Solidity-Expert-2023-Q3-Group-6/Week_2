// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Intro {
    function getWei() public pure returns (uint256) {
        assembly {
            let result := callvalue()
            mstore(0x0, result)
            return(0x0, 32)
        }
    }
}