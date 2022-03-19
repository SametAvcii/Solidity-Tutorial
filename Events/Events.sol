//SPDX-License-Identifier:MIT

pragma solidity ^0.8.10;

contract Event{
    event Log (address indexed sender,string message);
    event AnotherLog();

    function Meet()public{
        emit Log(msg.sender, "Hello Everyone I'm Samet!!");
        emit Log(msg.sender, "My surname Avci");
        emit AnotherLog();
    }


}