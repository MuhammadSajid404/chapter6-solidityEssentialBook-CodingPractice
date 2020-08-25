pragma solidity ^0.6.7;

contract base {
    function foo() public virtual view returns(uint) {
        return 43;
    }
}

contract derived is base {
    uint age = 90;
    function foo() public override view returns(uint) {
        return age;
    }
}