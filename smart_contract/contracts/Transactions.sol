//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Transactions {
    uint256 transactionCount;

    event Tranfer(
        address from,
        address recipient,
        uint256 amount,
        string message,
        uint256 timestamp,
        string keyword
    );

    struct TransferStruct {
        address sender;
        address recipient;
        uint256 amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransferStruct[] transactions;

    function addToBlockchain(
        address payable _recipient,
        uint256 _amount,
        string memory _message,
        string memory _keyword
    ) public {
        transactionCount++;
        transactions.push(
            TransferStruct(
                msg.sender,
                _recipient,
                _amount,
                _message,
                block.timestamp,
                _keyword
            )
        );
        emit Tranfer(
            msg.sender,
            _recipient,
            _amount,
            _message,
            block.timestamp,
            _keyword
        );
    }

    function getAllTransactions()
        public
        view
        returns (TransferStruct[] memory)
    {
        return transactions;
    }

    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }
}
