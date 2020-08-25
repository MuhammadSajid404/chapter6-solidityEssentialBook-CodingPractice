pragma solidity ^0.6.7;

contract A {
    function getString() public virtual pure returns(string memory) {
        return "Hello From getString contract A";
    }
}

contract B is A {
    function getString() public override pure returns(string memory) {
        return "Hello From getString contract B";
    }
}

contract AB {
    function xyz() public returns(string memory) {
        // A a = new A();
        // B b = new B();
        A b = new B();
        return b.getString();
    }
}