pragma solidity ^0.6.7;

contract A {
    uint256 private age;
    
    function getAge() public view returns(uint256) {
        return age;
    }
    
    function setAge(uint256 _age) public {
        age = _age;
    }
}

contract B {
    address add;
    function getAdd(address _add) public {
        add = _add;
}
    function getA() public returns(uint256) {
        A a = A(add);
        a.setAge(3);
        return a.getAge();
    }
}