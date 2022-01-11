// Call contract through node.js
let Web3 = require("web3");
let web3 = new Web3(new Web3.providers.HttpProvider("HTTP://127.0.0.1:7545"));
web3.eth.call({from:"0xadE9212E650f2B91412D6Db6d819261Fd259f0f6", to:"0x112D948FE946F727ACe8fF2bFd25b68b12447875", data:"0x06540f7e"})

// Call contract from web browser
// web3.eth.Contract(abi_array, contract_address)
let myContract = new web3.eth.Contract([
	{
		"constant": true,
		"inputs": [],
		"name": "myUint",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_myUint",
				"type": "uint256"
			}
		],
		"name": "setUint",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	}
], 0x112D948FE946F727ACe8fF2bFd25b68b12447875);