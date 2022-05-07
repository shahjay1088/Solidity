// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 < 0.9.0;

contract FunctionArgument{
    uint public data;

    function set(uint _data) public {
        data = _data;
    }

    function get() view public returns(uint){
       return data;
    }

}
