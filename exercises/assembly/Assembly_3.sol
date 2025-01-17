pragma solidity ^0.8.4;

contract SubOverflow {
    // Modify this function so that on overflow it returns the value 0
    // otherwise it should return x - y
    function subtract(uint256 x, uint256 y) public pure returns (uint256) {
        // Write assembly code that handles overflows
        uint256 result;
        assembly {
            switch lt(x, y)
            case 0 {
                result := sub(x, y)
            }
            default {
                result := 0
            }
        }
        return result;
    }
}
