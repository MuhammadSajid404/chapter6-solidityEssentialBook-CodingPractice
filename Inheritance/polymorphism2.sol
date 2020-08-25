pragma solidity ^0.6.7;

contract parent {
    function getString() public virtual pure returns(string memory) {
        return "Hello From getString contract parent";
    }
}

contract child is parent {
    function getString() public virtual override pure returns(string memory) {
        return "Hello From getString contract child";
    }
}

contract grandChild is child {
    function getString() public override pure returns(string memory) {
        return "Hello From getString contract grandChild";
    }
}

contract AB {
    event logDeploy(string);
    function xyz() public {
        grandChild GC = new grandChild();
        child C = new child();
        parent P = new parent();
        emit logDeploy(GC.getString());
        emit logDeploy(C.getString());
        emit logDeploy(P.getString());
    }
}