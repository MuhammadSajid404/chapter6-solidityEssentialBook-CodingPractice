pragma solidity ^0.6.7;

contract Parent {
    // Hierarchical inheritance
    string str = "Hello From Parent contract";
    function A() public view returns(string memory) {
        return str;
    }
}

contract ChildA is Parent {
    function AB() public view returns(string memory) {
        return str;
    }
}

contract ChildB is Parent {
    function AC() public view returns(string memory) {
        return str;
    }
}

contract grandChild is ChildA, ChildB {
    function AD() public view returns(string memory) {
        return str;
    }
}
/*
contract inheritanceRelation {
    function getParent() public returns(string memory) {
        ChildA CA = new ChildA();
        //ChildB CB = new ChildB();
        
        return CA.A();
        // return CB.A();
    }
}
*/