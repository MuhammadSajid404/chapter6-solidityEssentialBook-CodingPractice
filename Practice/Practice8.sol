pragma solidity ^0.6.7;
// function polymorphism
contract base {
    function foo(uint8 a) public pure returns(uint8) {
        return a;
    }
    
    function foo(uint8 a, uint8 b) public pure returns(uint8, uint8) {
        return (a, b);
    }
    
    function foo(uint24 a) public pure returns(uint24) {
        return a;
    }
    
    function foo(uint32 a) public pure returns(uint32) {
        return a;
    }
}

contract derived is base {
    function foo(uint16 a) public pure returns(uint16) {
        return a;
    }
}