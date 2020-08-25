pragma solidity ^0.6.7;

// mutiple inheritance
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

contract grandChildContract is childContract {
    function getValueFromChild() public view returns(uint) {
        return value;
    }
}

 /*
contract inheritanceRelation {
    function getBoth() public returns(uint) {
        grandChildContract GCC = new grandChildContract();
        return GCC.getValue();
    }
}
 */