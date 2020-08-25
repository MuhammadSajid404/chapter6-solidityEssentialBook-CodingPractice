pragma solidity ^0.6.7;

// Contracts may be marked as abstract 
// even though all functions are implemented.
abstract contract abc {
    function hello() public virtual pure returns(uint256) {
        return 34;
    }
}

contract hi is abc {
    function hello() public override pure returns(uint256) {
        return 34 * 3;
    }
}