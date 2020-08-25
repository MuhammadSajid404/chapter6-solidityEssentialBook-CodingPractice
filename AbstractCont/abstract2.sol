pragma solidity ^0.6.7;

// Abstract contracts help in defining the structure of a contract
abstract contract abc {
    function getAbc() public virtual returns(string memory);
}
// any class inheriting from it must ensure to provide an implementation for them.
contract xyz is abc {
    function getAbc() public override returns(string memory) {
        return "Hello From Abstract Child";
    } 
}

