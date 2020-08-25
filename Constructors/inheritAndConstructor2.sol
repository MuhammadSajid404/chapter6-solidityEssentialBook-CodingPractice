pragma solidity ^0.6.7;

contract A {
    uint private age;
    
    //constructor with parameters in parent
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
    constructor () A(4) public {
        emit logString("Calling Default construtor from B");
    }
}

contract DemoObject {
    function doSomeThing() public returns (uint) {
        B c = new B();
        return c.getAge();
    }
}