pragma solidity ^0.6.7;
// counter smart contract
contract counter {
    event valueChanged(uint newValue);
    uint private count;
    
    constructor(uint startValue) public {
        count = startValue;
    }
    
    function setCounter(uint newValue) internal {
        count = newValue;
        emit valueChanged(count);
    }
    
    function getCount() public view returns (uint) {
        return count;
    }    
}

contract IncrementCounter is counter {
    
    constructor(uint startValue) counter(startValue) public {}
    
    function step() public {
        setCounter(getCount() + 1);
    }
}

contract CountDown100 is counter {
    
    constructor() counter(100) public {}
    
    function step() public {
        setCounter(getCount() - 1);
    }
}