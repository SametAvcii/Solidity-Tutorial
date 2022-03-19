//SPDX-License-Identifier:MIT

pragma solidity ^0.8.10;

contract A{
    function name()public virtual pure returns (string memory){
        return "Contract A";
    }
}
//contract B is A{
    
//}
// If you deployed Contract B this contract return "Contract A"

contract B is A{
    function name()public pure virtual override returns (string memory){
        return "Contract B";
    }
    //This func is override Contract A. This func return "Contract B"

}
contract C is A{
    function name()public pure virtual override returns (string memory){
        return "Contract C";
    }
}
contract D is B,C
{
    function name()public pure override(C,B)returns(string memory){
        return super.name();
    }
}

//Swapping the order A and B will throw Compile Error 
//Inheritance must be order from Base-Liked to Most-derived
contract E is A,B{
    function name()public pure override(B,A)returns (string memory){
        return super.name();
    }
}