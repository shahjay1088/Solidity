// SPDX-License-Identifier: GPL-3.0
pragma solidity  >=0.5.0 <0.9.0

contract local_variable{
    function local() public pure returns(uint){
        uint local_age =10;
        return local_age;
    }
}
