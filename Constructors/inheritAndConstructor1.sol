pragma solidity ^0.6.7;

contract A {
    uint private age;
    
    //constructor without parameters
    event logString(string);
    constructor () public {
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
    constructor () public {
        emit logString("Calling Default construtor from B");
    }
}

contract DemoObject {
    function doSomeThing() public returns (uint) {
        B c = new B();
        c.setAge(21);
        return c.getAge();
    }
}