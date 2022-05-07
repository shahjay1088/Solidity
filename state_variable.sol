// SPDX-License-Identifier: GPL-3.0
pragma solidity  >=0.5.0 <0.9.0;

contract state_variable {

    //First Method to Initialize the value 
    uint public age = 10; //age is state varibale
    //if age value not Defined the default value is 0

    //Second Method to Initialize the value
    constructor()
    {
        age=101;
    }

    //Third Method to Initialize the value

    function third() public{
        age=102;
    }
    
    

}
