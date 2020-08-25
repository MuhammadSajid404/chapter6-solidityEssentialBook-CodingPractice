pragma solidity ^0.6.7;

contract parent {
    uint simpleInteger;
    
    function setInteger(uint _simpleInteger) public {
        simpleInteger = _simpleInteger;
    }
    
    function getInteger() public virtual returns(uint) {
        return 23;
    }
}

contract child is parent {
    function getInteger() public override returns(uint) {
        return simpleInteger;
    }
}

contract client {
    parent Pt = new child();
    function getValue() public returns(uint) {
        Pt.setInteger(12);
        return Pt.getInteger();
    }
}