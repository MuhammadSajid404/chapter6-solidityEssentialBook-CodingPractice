pragma solidity ^0.6.7;

contract A {
    uint256 private age;
    
    event logTil(string);
    constructor() public {
        emit logTil("Hello from til");
    }
    
    
    function getAge() public view returns(uint256) {
        return age;
    }
    
    function setAge(uint256 _age) public {
        age = _age;
    }
}

contract B {
    function getA() public returns(uint256) {
        A a = new A();
        a.setAge(4+10);
        return a.getAge();
    }
}

