// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.1;

contract IntegerExample {
    uint public myUint;

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }
}

contract BooleanExample {
    bool public myBool;

    function setMyBool(bool _myBool) public {
        myBool = _myBool;
    }
}

// NEEDS: pragma solidity 0.7.0;
contract RolloverExample {
    uint8 public myUint8;

    function decrement() public {
        myUint8--;
    }

    function increment() public {
        myUint8++;
    }
}

// Otherwise
contract RolloverExample2 {
    uint8 public myUint8;

    function decrement() public {
        unchecked {
            myUint8--;
        }
    }

    function increment() public {
        unchecked {
            myUint8++;
        }
    }
}

contract AddressExample {
    address public myAddress;

    function setAddress(address _address) public {
        myAddress = _address;
    }

    function getBalanceOfAccount() public view returns(uint) {
        return myAddress.balance;
    }
}

contract StringExample {
    string public myString = 'hello world!';

    function setMyString(string memory _myString) public {
        myString = _myString;
    }
}