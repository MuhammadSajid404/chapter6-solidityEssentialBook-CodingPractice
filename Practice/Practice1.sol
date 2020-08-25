pragma solidity ^0.6.7;

contract Funder {
    struct Instructor {
    uint age;
    string name;
    }
    
    Instructor instructor;
    //= Instructor(23, "jason");
    /*
    
    event logFunder(string);
    constructor() public {
        emit logFunder("Hello From Funder");
    }
    
    function getInfo() public view returns(uint){
        return instructor.age;
    }*/
    function getInfo(uint _age, string memory _name) public {
        instructor.age = _age;
        instructor.name = _name;
    }
    function zee() public view returns(uint, string memory) {
        return (instructor.age, instructor.name);
    }
}
/*
contract Fundi {
    function getParentInfo() public returns(string memory) {
        //Funder fun = new Funder();
        return fun.getInfo.instructor.age();
    }
}*/
/*
contract Fundi {
    Funder fun = new Funder();
    function getParentInfo() public view returns(uint) {
        // Funder fun = new Funder();
        return fun.getInfo();
    }
}*/