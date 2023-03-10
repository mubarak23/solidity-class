pragma solidity ^0.8.17;

contract Variables{
    string public text = "Hello";
    uint public sum = 2456;

    function doSomeThing() public {
        uint i = 456;
        uint timestamp = block.timestamp;
        address sender = msg.sender;
    }
}