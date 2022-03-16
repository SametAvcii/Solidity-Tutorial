//SPDX-License-Identifier:MIT

pragma solidity ^0.8.10;

contract Functions{
    function returnMany()public pure returns(uint,bool,uint){
        return (1,true,2);
    }

    //Values can be named
    function named()public pure returns(uint x,bool y,uint b){
        return (1,true,2);
    }

    function assigned() public pure returns(uint x,bool y,uint b){
        x=1;
        y=true;
        b=2;
    }

    function destructuringAssigments()public pure returns(uint,bool,uint,uint,uint){
        (uint i, bool b, uint j)=returnMany();
        (uint x,,uint y)=(4,5,6);
        return(i,b,j,x,y);
    }

    function arrayInput(uint[] memory _arr)public{}

    uint[] public arr;

    function arrayOutput()public view returns(uint[] memory){
        return arr;
    }
}