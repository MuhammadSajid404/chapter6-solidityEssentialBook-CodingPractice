pragma solidity ^0.6.7;

// single inheritance
contract parentContract {
    uint value = 43;
    
    function getValue() public view returns(uint) {
        return value;
    }
}

contract childContract is parentContract {
    function getValueFromParent() public view returns(uint) {
        return value;
    }
}

/*
contract inheritanceRelation {
    function getBoth() public returns(uint) {
        childContract CC = new childContract();
        return CC.getValue();
    }
}
*/