// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Lottert{

    address public manager;
    address payable[] public participants;

    constructor()
    {
        manager=msg.sender;
    }

    receive() external payable
    {
        require(msg.value>=1 ether);
        participants.push(payable(msg.sender));
    }

    function getBalance() public view returns(uint)
    {
        require(msg.sender== manager);
        return address(this).balance;
    }

    function rendom() public view returns(uint)
    {
       return uint(keccak256(abi.encodePacked(block.difficulty,block.timestamp,participants.length)));
    }

    function winnerofLottery() public 
    {
        require(msg.sender==manager);
        require(participants.length>=3);
        uint r=rendom();
        address payable winner;

         uint index = r % participants.length;
         winner=participants[index];
         winner.transfer(getBalance());
        
         
    }
}
