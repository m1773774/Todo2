// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract MyArr {

    uint[] private data;

    function addArr(uint value) public {
        data.push(value);
    }

    function removeArr(uint index) public {
        require(index < data.length, "Index out of bounds");

        for (uint i = index; i < data.length - 1; i++) {
            data[i] = data[i + 1];
        }

        data.pop();
    }

    function getArr() public view returns (uint[] memory) {
        return data;
    }

    string public b;
    int public c;

    uint[5] public data2;
}

