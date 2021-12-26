//SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract SimpleMappingExample {

    mapping(uint => bool) public myMapping;
    mapping(address => bool) public myAddressMapping;

    function setValue(uint _index) public {
        myMapping[_index] = true;
    }

    function setMyAddressToTrue() public {
        myAddressMapping[msg.sender] = true;
    }

    mapping (uint => mapping(uint => bool)) uintUintBoolMapping;

    function setUintUintBoolMapping(uint _index, uint _mapindex, bool _value) public {
        uintUintBoolMapping[_index][_mapindex] = _value;
    }

    function getUintUintBoolMapping(uint _index, uint _mapindex) public view returns (bool) {
        return uintUintBoolMapping[_index][_mapindex];
    }
}
