pragma solidity ^0.6.7;

contract Hellin {
   // uint age = 4;
    
    event logBook(string);
    constructor() public {
        emit logBook("Hello from Hellin");
    }
    
    /*function getAge(uint _age) public {
        age = _age;
    }
 */   
    function setAge() public view returns(uint) {
        return 2;
    }
}

contract foo is Hellin {
    constructor() public {
        emit logBook("Hello from foo");
    }
}

contract love is Hellin {
    uint age;
    constructor(uint a) public {
        age = a;
        emit logBook("Hello from love");
    }
    function setAgeA() public view returns(uint) {
        return age;
    }
}

contract All is foo, love {
    constructor() love(38)  public {
        emit logBook("Hello from All");
    }
}

contract Fellin {
    function getHellin() public returns(uint) {
        All hel = new All();
        return hel.setAgeA();
    }
}