pragma solidity ^0.6.7;

contract Hellin {
    uint age;
    
    event logBook(string);
    constructor() public {
        emit logBook("Hello from Hellin");
    }
    
    function getAge(uint _age) public {
        age = _age;
    }
    
    function setAge() public view returns(uint) {
        return age;
    }
}

contract foo is Hellin {
    constructor() public {
        emit logBook("Hello from foo");
    }
}

contract love is Hellin {
    constructor() public {
        emit logBook("Hello from love");
    }
}

contract All is foo, love {
    constructor() public {
        emit logBook("Hello from All");
    }
}

contract Fellin {
    function getHellin() public returns(uint) {
        All hel = new All();
        hel.getAge(930);
        return hel.setAge();
    }
}