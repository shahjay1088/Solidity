pragma solidity >=0.5.0 <0.9.0;
// SPDX-License-Identifier: MIT

contract IfElse{
    function checkEvenOdd(int num) public pure returns(string memory){
        string memory str;
       if(num<=0)
       {
        str="Please Enter Positive number";
       }
       else  if(num%2==0)
        {            
            str="Enter Value is Even";
        }
        else 
        {
            str="Enter value is Odd";
        }
        return str;
    }
}
