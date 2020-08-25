pragma solidity ^0.6.7;

contract baseContract {
    uint count;
    
    function setCount(uint _count) public {
        count = _count;
    }
    
    function getCount() public virtual view returns(uint) {
        return count;
    }
}

contract derivedContract is baseContract {
    function getCount() public override view returns(uint) {
        return count + 7 - 2;
    }
}
// contract polymorphism
contract contractPolymorphism {
    baseContract BC = new derivedContract();
    function getCount() public returns(uint) {
        BC.setCount(2);
        return BC.getCount();
    }
}