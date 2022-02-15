pragma solidity >=0.8.0 <0.9.0;

contract HelloWorld {
    
    string message = "Hello World";

    function setMessage(string memory newMessage) public payable returns (string memory) {
        message = newMessage;
        return message;
    }

    function hello() view public returns (string memory){
        return message;
    }
}

