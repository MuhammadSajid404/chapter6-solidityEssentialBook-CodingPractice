pragma solidity ^0.6.7;
/*
contract abc {
    function ab() public returns(uint256) {
        return 34;
    }
} // cannot inherit from other contracts
*/

interface helloWorld {
    
    // interfaces cannot have any functions implemented
    // All declared functions must be external.
    // They cannot declare a constructor & state variables
//    enum TokenType { Fungible, NonFungible }
//    struct Coin { string obverse; string reverse; }
//    function transfer(address recipient, uint amount) external;
    function abc() external returns(uint256); 
}

// Contracts can inherit interfaces as they would inherit other contracts.
contract AB is helloWorld {
    function abc() external override returns(uint256) {
        return 23;
    } 
}