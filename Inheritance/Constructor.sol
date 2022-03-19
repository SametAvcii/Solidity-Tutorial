//SPDX-License-Identifier:MIT

pragma solidity ^0.8.10;

contract A{
    string public adrr="0x111122223333444455556666777788889999aAaa";

        function getAddress()public view returns(string memory){
            return adrr;
        }

}
/*contract B is A{
    address public adrr=0x111122223333444455556666777788889999aAaa;
}  Solidity not supported this style after version 0.6*/


//This code provide override to contract A
contract C is A{
    constructor(){
        adrr="0x111122223333444455556666777788889999aBbb";
    }
}