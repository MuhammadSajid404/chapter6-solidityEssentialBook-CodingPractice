pragma solidity ^0.6.7;

contract Hello {
    uint age;
    
    function getAge(uint _age) public returns(uint) {
        age = _age;
    }
}

contract Hi is Hello {
    function setAge(uint agea) public returns(uint) {
        age = agea;
        return age;
    }
}