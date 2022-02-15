
pragma solidity >=0.8.0 <0.9.0;

contract Transactions {

    uint transactionCount;

    // Funcion con parametros
    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);

    // Similar a un objeto, se le agregan las propiedas y que tipo. Propiedades que nuestra transferencia tendra
    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    // Definir que tipo de transacciones, seran un arreglo de transfer structures, osea un array de objetos
    TransferStruct[] transactions;

    
    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        transactionCount += 1;
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));

        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
    }

    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return transactions;

    }

    function getTransactionCount() public view returns (uint256) {
        return transactionCount;

    }

}