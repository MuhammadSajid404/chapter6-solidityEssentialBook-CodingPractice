pragma solidity ^0.6.7;

contract A {
    uint private age;
    
    //constructor with parameters in child
    event logString(string);
    constructor (uint _age) public {
        age = _age;
        emit logString("calling default constructor A");    
    }
    
    function getAge() public view returns (uint) {
        return age;
    }
    function setAge(uint _age) public {
        age = _age;
    }
}

contract B is A {
    constructor (uint xyz) A(xyz) public {
        emit logString("Calling Default construtor from B");
    }
}

contract DemoObject {
    function doSomeThing() public returns (uint) {
        B c = new B(45);
        return c.getAge();
    }
}