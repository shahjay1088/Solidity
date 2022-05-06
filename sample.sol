// SPDX-License-Identifier: GPL-3.0
pragma solidity  >=0.5.0 <0.9.0;

contract simple {
    int number;
    constructor()
    {
        number=5;
    }
    function getter() public view returns(int)
    {
        return number;
    }
    function  increment() public{
        number = number+1;
    }

}
