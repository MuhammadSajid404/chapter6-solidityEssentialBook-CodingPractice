pragma solidity ^0.6.7;

abstract contract Fellin {
    function foo() public virtual pure returns(string memory);
}

abstract contract Utternace is Fellin {
    
    function foo() public virtual override pure returns(string memory);
}

abstract contract Insert is Utternace {
    function foo() public virtual override pure returns(string memory) {
        return "Hello Funk";
    }
}

contract Lovein is Insert {
    function foo() public override pure returns(string memory) {
        return "Hello Funk from Lovein";
    }
}
contract Dom {
    function feel() public returns(string memory) {
        Lovein utt = new Lovein();
        return utt.foo();
    }
}