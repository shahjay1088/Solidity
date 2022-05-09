// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract fixedArray{
    uint[3] public arr=[10,20,30];

    function insert(uint index,uint element) public{

        arr[index]=element;

    }

    function len() view public returns(uint){
        return arr.length;
    }

}
