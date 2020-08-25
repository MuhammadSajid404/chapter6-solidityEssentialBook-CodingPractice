pragma solidity ^0.6.7;


contract ab {
    
    event logEvent(string);
    constructor() public {
        emit logEvent("Hello from ab contract");
    }
    
    function abc() public pure returns(string memory) {
        return "Hello from abc function";
    }
}
contract cd {
    function def() public returns(string memory) {
        ab AB = new ab();
        return AB.abc();
    }
}