// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AttendanceTracker {
    // Owner (deployer) of the contract
    address public owner;

    // Mapping to store attendance (true = present, false = absent)
    mapping(string => bool) public attendance;

    // Constructor: runs once during deployment
    constructor() {
        owner = msg.sender; // the deployer is the owner
    }

    // Function to mark attendance (only owner can call)
    function markAttendance() public {
        require(msg.sender == owner, "Only owner can mark attendance");

        // Fixed list of students/employees (no input fields)
        attendance["Alice"] = true;
        attendance["Bob"] = true;
        attendance["Charlie"] = false;
        attendance["David"] = true;
    }

    // Function to check attendance of a person
    function isPresent(string memory name) public view returns (bool) {
        return attendance[name];
    }
}
