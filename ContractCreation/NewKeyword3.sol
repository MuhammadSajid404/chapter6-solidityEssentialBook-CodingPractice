pragma solidity ^0.6.7;

contract D {
    uint public x;
    
    constructor(uint a) public payable {
        x = a;
    }
}

contract C {
    D d = new D(4); // will be executed as part of C's constructor
    
    function createD(uint arg) public {
        D newD = new D(arg);
        newD.x();
}

    function createAndEndowD(uint arg, uint amount) public payable {
        D newD = new D{value: amount}(arg);
        newD.x();
    }

}