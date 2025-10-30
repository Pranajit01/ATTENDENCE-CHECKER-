🧾 Attendance Tracker (Solidity Smart Contract)

A simple beginner-level Solidity smart contract that tracks attendance on the blockchain.
This version is designed for absolute beginners — it has no input fields and uses a fixed list of names to demonstrate how attendance data can be stored and read from a smart contract.
<img width="1920" height="1080" alt="Screenshot 2025-10-30 143735" src="https://github.com/user-attachments/assets/b1765e20-e986-493b-bf70-90143b765ae3" />

🚀 Features
wallet address 0x7afb774eb81dc10d3967b87c156b20d5e11cbfe2
![Uploading {3919E763-6F62-402B-B0A6-D9DAA1FF6C0F}.png…]()


🧍 Owner-controlled: Only the contract owner (deployer) can mark attendance.

🗂️ Hardcoded names: Uses a predefined list of people for simplicity.

📜 Immutable record: Attendance data is stored permanently on the blockchain.

🔍 View function: Anyone can check if a person is marked as present or absent.

🧠 How It Works

When the contract is deployed, the deployer becomes the owner.

The owner can call the markAttendance() function once to mark attendance for the predefined list of names (Alice, Bob, Charlie, David).

Anyone can use the isPresent(name) function to check if a particular name is marked as present.

💻 Smart Contract Code
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AttendanceTracker {
    address public owner;
    mapping(string => bool) public attendance;

    constructor() {
        owner = msg.sender;
    }

    function markAttendance() public {
        require(msg.sender == owner, "Only owner can mark attendance");

        attendance["Alice"] = true;
        attendance["Bob"] = true;
        attendance["Charlie"] = false;
        attendance["David"] = true;
    }

    function isPresent(string memory name) public view returns (bool) {
        return attendance[name];
    }
}

🧪 Testing on Remix IDE

Go to Remix Ethereum IDE

Create a new file named AttendanceTracker.sol

Paste the above code

Compile with Solidity version 0.8.x

Deploy the contract

Click the markAttendance() button

Use isPresent("Alice"), isPresent("Charlie"), etc., to check attendance status.

⚙️ Requirements

Remix IDE or any Ethereum development environment

Solidity compiler ^0.8.0

MetaMask or a test Ethereum wallet (optional for testing transactions)

📈 Future Improvements

Allow users to mark their own attendance using wallet addresses

Add timestamps for each attendance record

Store daily attendance logs

Implement admin and student roles

Build a simple web interface using React & Web3.js

🪙 License

This project is licensed under the MIT License – feel free to use and modify for learning purposes.
