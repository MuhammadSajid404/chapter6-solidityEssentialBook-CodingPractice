pragma solidity ^0.6.7;

contract Parent {
    uint age;
    
    event logTail(string);
    constructor(uint a) public {
        age = a;
        emit logTail("Hello from Parent");
    }
    
    function getAge() public view returns(uint) {
        return age;
    }
    
    function setAge(uint _age) public {
        age = _age;
    }
}

contract Child is Parent {
    constructor(uint ab) Parent(ab) public {
        age = ab;
        emit logTail("Hello from Child");
    }
    
    function setAgeA() public view returns(uint) {
        return age;
    }
}
contract Client {
    function createObject() public returns(uint) {
        Child P = new Child(78);
        P.setAge(43);
        return P.setAgeA();
    }
}