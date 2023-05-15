pragma solidity ^0.8.4;

contract Scope {
    uint256 public count = 10;

    function increment(uint256 num) public {
        // Modify state of the count variable from within
        // the assembly segment
        assembly {
            let current_count := sload(0)
            let new_count := add(current_count, num)
            sstore(0, new_count)
        }
    }
}
