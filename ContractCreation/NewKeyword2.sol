pragma solidity ^0.6.7;

contract A {
    string private str;
    
    event logTil(string);
    constructor() public {
        emit logTil("Hello from til");
    }
    
    
    function getStr() public view returns(string memory) {
        return str;
    }
    
    function setStr(string memory _str) public {
        str = _str;
    }
}

contract B {
    function getA() public returns(string memory) {
        A a = new A();
        a.setStr("solidity Hi");
        return a.getStr();
    }
}