pragma solidity ^0.6.7;


contract parent {
    uint simpleInteger;
    
    event logs(string);
    constructor() public {
        emit logs("Hello from parent");
    }
    
    function setInteger(uint _simpleInteger) public {
        simpleInteger = _simpleInteger;
    }
    
    function getInteger() public virtual returns(uint) {
        return 23;
    }
}

contract child is parent {
    constructor() public {
        emit logs("Hello from child");
    }
    function getInteger() public override returns(uint) {
        return simpleInteger;
    }
}

contract client {
    // parent Pt = new parent();
    function getValue() public returns(uint) {
        parent Pt = new child();
        Pt.setInteger(12);
        return Pt.getInteger();
    }
}