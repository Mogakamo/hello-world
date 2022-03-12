// Solidity version
pragma >= 0.7.3;

// Hello world contract 
contract HelloWorld {
    // event emit
    event UpdatedMessages(string oldString, string newString);

    // state variable
    string public message;

    // constructor
    constructor(string memory initMessage) {
        // Accepts a string argument
        message = initMessage;
    }

    function update(string memory newMessage) {
        string memory oldMessage = message;
        message = newMessage;
        emit UpdatedMessages(oldMessage, newMessage);
    }

    function displayHelloWorld public pure returns (string memory) {
        return "Hello World";
    }
}
