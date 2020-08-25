pragma solidity ^0.6.7;


contract Human {
    function doSomeWork()  public virtual pure returns (string memory){
        return "Do Some Work from Human";
    }
}

contract Student is Human {
    function doSomeWork() override virtual public pure returns (string memory){
        return "Do Some Work in Student";
    }
}

contract BlockchainStudent is Student {
    function doSomeWork() override public pure returns (string memory){
        return "Do Some Work in Blockchian Student";
    }
}


contract DemoObject {
    event logString(string);
    function doSomeThing() public returns (uint) {
        Human h = new Human();
        Student s = new Student();
        Human hh = new Student();
        BlockchainStudent bstu = new BlockchainStudent();
        emit logString(h.doSomeWork());
        emit logString(s.doSomeWork());
        emit logString(hh.doSomeWork());
        emit logString(bstu.doSomeWork());
        
    }
}