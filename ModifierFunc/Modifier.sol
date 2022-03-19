//SPDX-License-Identifier:MIT

pragma solidity ^0.8.10;

contract FuncModifier{
    address public owner;
    uint public x=10;
    bool public locked;

    constructor(){
        owner=msg.sender;
    }
    
    modifier onlyOwner(){
        require(msg.sender== owner, "Not Owner");
        _;
    }
    modifier validAdress(address _addr){
        require(_addr!=address(0),"Not Valid Adress");
        _;
    }

    function ChangeOwner(address _newOwner)public onlyOwner validAdress (_newOwner){
        owner=_newOwner;
    }

    modifier noReentracy(){
        require(!locked, "No reentracy");
        locked =true;
        _;
        locked=false;
    }

    function decrement(uint i)public noReentracy{
        x-=i;
        if(i>1){
            decrement(i-1);
        }
    }


}