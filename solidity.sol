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
    // Boolean
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

    // min and mad max
    int public minInt = type(int104).min;
    int public maxInt = type(int256).max;

    // Arrays
    // Two types of array fixed-sized and dynamic sized
    bytes1 public a = 0x32; //[10101]
    bytes1 public b = 0xb3; //[10101]

    // address
    address public hey;
    address public addr = 0x1F50eA64C89D5620b3Dbe023A5AD4c0fFbbcaDB7;
}

contract Functions {
    uint256 public num = 324;

    function getInfo() public view returns (uint) {
        return num;
    }

    function updateInfo(uint newName) public returns (uint) {
        num = newName;
        return newName;
    }

    function add(uint a, uint b) public returns (uint sum) {
        sum = a + b;
        num = sum;
        return sum;
    }
}

contract StateVariables {
    // ex of state variables
    string public defaultText = "Hey Greg";
    uint public defaultNum = 2334;
    int public defaultInt = -43;
    bytes public defaultBytes = "Hey Default Byte"; // the output for bytes always starts with 0x
    uint[] public myNumber = [23];

    // Updating state variables
    // constructor(string memory _text, uint _no) public {
    //     defaultText = _text;
    //     defaultNum = _no;
    // }

    // Updating state variables
    function update(string memory _text, uint _no) public {
        defaultText = _text;
        defaultNum = _no;
    }
}

contract LocalVariables {
    // Local variables are variables defined inside the function scope
    uint public myNumber;

    function update() public pure returns (uint) {
        uint i = 344;
        return i;
    }
}

contract GlobalVariables {
    address public ownerAddress;
    address public myBlochHash;
    uint public gasLImit;
    uint public number;
    uint public timpstamp;
    uint public value;
    uint public nowOn;
    address public origin;
    address public sender;
    uint public gasPrice;
    bytes public callData;

    constructor() {
        // This is the address of whoever deploys the contract
        ownerAddress = msg.sender;

        myBlochHash = block.coinbase;
        gasLImit = block.gaslimit;
        number = block.number;
        timpstamp = block.timestamp;
        value = block.prevrandao;
        origin = tx.origin;
        callData = msg.data;
        gasPrice = tx.gasprice;
        sender = msg.sender;
    }

    function update() public pure returns (uint) {
        uint i = 344;
        return i;
    }
}
