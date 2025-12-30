// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0; // Solidity language version (0.8.something)

contract FirstContract {

    uint public minimum;

    function demo() public {
        minimum = type(uint8).min;
        minimum = type(uint8).max;
    }

    uint8 public myVal = 254;

    function increment() public {
        // myVal += 1; error

        unchecked {
            myVal += 1; // switches to the limit
        }
    }

    // unsigned integer (only positive)
    uint public myUint = 42; // or uint256, up to 2**256
    uint8 public mySmallUint = 2; // up to 2**8 = 256

    // signed integer (+ or -)
    int public myInt = -42;
    int8 mySmallInt = -1;

    // bool public myBool = true;

    // function func(bool _inputBool) public {
    //     bool localBool = false;
    //     localBool && _inputBool;
    //     localBool || _inputBool;
    //     localBool == _inputBool;
    //     localBool != _inputBool;
    //     !localBool;

    //     if (inputBool || localBool) {

    //     }
    // }
}