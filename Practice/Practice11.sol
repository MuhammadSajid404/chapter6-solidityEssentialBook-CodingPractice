pragma solidity ^0.6.7;

interface Fellin {
    function foo() external pure returns(uint);
}
/*
abstract contract Hellin is Fellin {
    function foo() public virtual override pure returns(uint) {
    }   
}
*/
contract Base is Fellin {
    function foo() public override pure returns(uint) {
        return 21 / 3;
    }
}