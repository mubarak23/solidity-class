// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.4.17;
// >=0.8.2 <0.9.0;

contract Inbox {
    string public message;

    function myMessage (string initialMessage) public {
        message = initialMessage;
    }

    function setMessage (string newMessage) public {
        message = newMessage;
    }

    function getMessage () public view returns (string) {
        return message;
    }
}