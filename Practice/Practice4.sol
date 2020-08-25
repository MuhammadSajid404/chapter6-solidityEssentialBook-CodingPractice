pragma solidity ^0.6.7;

contract ABC {
    uint private age;
    
    event logBook(string);
    constructor(uint a) public {
        age = a;
        emit logBook("hello from ABC");
    }
    function getAge() public view returns(uint) {
        return age;
    }
}

contract DEF is ABC {
    constructor() ABC(1) public {
        emit logBook("hello from DEF");
    }
}

contract client {
    function getAbc() public returns(uint) {
        ABC ab = new ABC(21);
       // DEF de = new DEF(4);
        
        return ab.getAge();
        //return de.getAge();
    }
}