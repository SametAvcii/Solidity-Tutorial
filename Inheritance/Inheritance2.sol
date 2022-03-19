//SPDX-License-Identifier:MIT

pragma solidity ^0.8.10;

contract A{
    event Log(string message);

    function foo()public virtual{

    emit Log("A.foo called");
    }
    function bar()public virtual{
        emit Log("A.bar called");
    }
}
contract B is A{
    function foo()public override virtual{
        emit Log("B.foo called");
     
    }
    function bar()public override virtual{
        emit Log("B.bar called");
        super.bar();
    }

}
contract C is A {
    function foo()public override virtual{
        emit Log("C. foo called");
      
    }
    function bar()public override virtual{
        emit Log ("C. Bar called");
        A.bar();
    }
}
contract D is B,C{
        function foo()public override(B,C){
            emit Log("D foo called");
            super.foo();
        }
        function bar()public override(B,C){
            emit Log("D bar called");
            super.bar();
        }
    }
