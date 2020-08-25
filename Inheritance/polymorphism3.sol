pragma solidity ^0.6.7;

contract parentContract {
    uint public simpleInt;
    
    function setInt(uint _simpleInt) public {
        simpleInt = _simpleInt;
    }
    
    function getInt() public virtual view returns(uint) {
        return 20;
    }
}

contract childContract is parentContract {
    function getInt()  public override view returns(uint) {
        return simpleInt;
    }
}

contract client {
    parentContract pc = new childContract();
    
    function xyz() public returns(uint) {
        pc.setInt(41);
        return pc.getInt();
    }
}