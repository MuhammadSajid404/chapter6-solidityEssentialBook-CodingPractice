pragma solidity ^0.6.7;

 contract Granny {
    event Say(string, string);

    constructor() public {
        emit Say('I am Granny and I am cool!', 'no one');
    }

   function getName() public virtual pure returns (string memory) {
        return 'Granny';
    }
}

contract Mommy is Granny {
    constructor() public {
        emit Say('I am Mommy and I call ', super.getName());
    }

    function getName() public virtual override pure returns (string memory) {
        return 'Mommy';
    }
}

contract Daddy is Granny {
    constructor() public {
        emit Say('I am Daddy and I call ', super.getName());
    }

    function getName() public virtual override pure returns (string memory) {
        return 'Daddy';
    }
}

contract Kiddo is Mommy, Daddy {
    constructor() public {
        emit Say('I am Kiddo and I call ', super.getName());
    }
    
    function getName() public override(Mommy, Daddy) pure returns (string memory) {
        return 'Kiddo';
    }
}

contract Hello {
    function getValue() public returns(string memory) {
        Kiddo K = new Kiddo();
        return K.getName();
    }
}