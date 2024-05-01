// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract MyfirstContract {
    string public name = "godswill";
    uint256 public age = 23;

    struct Person {
        string firstname;
        string lastname;
        string email;
        string password;
    }

    constructor(string memory greg, uint newAge) {
        name = greg;
        age = newAge;
    }

    function addAge(uint256 newage) public view returns (uint256 totalAge) {
        totalAge = age + newage;
        return totalAge;
    }
}

contract NftCount {
    uint256 public numOfNFT;

    function addNft() public {
        numOfNFT += 1;
    }

    function deleteNft() public {
        numOfNFT -= 1;
    }

    function getTotalNft() public view returns (uint256) {
        return numOfNFT;
    }
}

contract DataTypes {
    // Booleans
    bool public isEmailVerified;
    bool public isRegistered = true;

    // UINT - All positive numbers only
    // uint8 - ranges from 0 - 2^8 - 1 = 255
    // uint16 - ranges from 0 - 2^16 - 1 = 65535
    // uin256 - ranges from 0 - 2^256 - 1 = 1.15792*10^77
    // uint = uint256
    uint8 public u8 = 123;
    uint public u256 = 2345;

    // INT - both positive and negative numbers
    // int256 ranges from -2^255 to 2^255 -1
    // int127 ranges from -2^127 to 2^127 -1
    // int = int256
    int8 public i8 = -1;
    int public i256 = 456;
    int public intnegative256 = -56;
}
