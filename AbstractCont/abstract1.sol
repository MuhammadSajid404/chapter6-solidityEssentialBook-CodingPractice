pragma solidity ^0.6.7;

abstract contract Feline {
    // partial function definitions 
    function utterance() public virtual returns (string memory);
}

/*
contract foo {
    function fooo() public {
        // cannot instantiate an abstract contract
        Feline f = new Feline();
    }
}
*/
// An abstract contract must be inherited by a child contract
// for utilizing its functions
contract Cat is Feline {
    function utterance() public override returns (string memory) { 
        return "miaow"; 
    }
}