pragma solidity ^0.6.7;

abstract contract abc {
    constructor() public {
        
    }
    
    function gi() public virtual returns(uint256);
}

interface token {
    function an() external returns(uint);
}

abstract contract dd is token {
    function ll() public virtual returns(uint);
}

