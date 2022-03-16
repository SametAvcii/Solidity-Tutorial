//SPDX-License-Identifier:MIT

pragma solidity ^0.8.10;

contract EtherUnits{
    uint public oneWei= 1 wei;
    uint public oneEther =1e18 wei;

    function testOneWei() public pure returns (bool){
        return 1 wei ==1;
    }
    function testOneEther()public pure returns (bool){
        return 1 ether ==1e18;
    }

}