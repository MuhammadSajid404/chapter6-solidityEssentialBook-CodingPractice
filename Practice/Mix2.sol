pragma solidity ^0.6.7;

contract Parent {
    function foo() public virtual pure returns(string memory) {
        return ("Hello from foo");
    }
}

contract Child is Parent {
    function foo() public virtual override pure returns(string memory) {
        return ("Hello from Child");
    }
}

contract grandChild is Parent{
    function foo() public virtual override pure returns(string memory) {
        return ("Hello from grandChild");
    }
}

contract childFriend is Child, grandChild {
    function foo() public override (Child, grandChild) pure returns(string memory) {
        return ("Hello from childFriend");
    }
}

contract Family {
    function woo() public returns(string memory) {
        childFriend CF = new childFriend();
        return CF.foo();
    }
}