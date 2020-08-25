pragma solidity ^0.6.7;

contract Parent {
    uint private age = 90;
    
    event logTail(string);
    constructor(uint _agea) public {
        age = _agea;
        emit logTail("Hello from Parent");
    }
    
    function getAge() public view returns(uint) {
        return age;
    }
    
    function setAge(uint _age) public {
        age = _age;
    }
}

contract Client {
    function createObject() public returns(uint) {
        Parent P = new Parent(34);
        // it will call the constructor in every situation 
        // and updates the age value
        P.setAge(43);
        return P.getAge();
    }
}