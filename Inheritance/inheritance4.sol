pragma solidity ^0.6.7;

contract sumContract {
    function sum(uint a, uint b) public pure returns(uint) {
        return a + b;
    }
}

contract mulContract is sumContract {
    function mul(uint a, uint b) public pure returns(uint) {
        return a * b;
    }
}

contract divContract is sumContract {
    function div(uint a, uint b) public pure returns(uint) {
        return a / b;
    }
}

contract subContract is sumContract, mulContract, divContract {
    function sub(uint a, uint b) public pure returns(uint) {
        return a - b;
    }
}

contract Exp {
    function workInheritance() public returns(uint) {
        uint a = 5;
        uint b = 7;
        subContract SC = new subContract();
        //return SC.sum(a, b);
        return SC.mul(a, b);
    }
}