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

// A single address is generated that is shared between contracts in a parent-
// child relationship.

contract upperBoth {
    address add;
    function getContracts(address _add) public returns(uint) {
        add = _add;
        childContract CC = childContract(add);
        return CC.getValueFromParent();
    }
}