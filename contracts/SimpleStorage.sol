//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; 

contract SimpleStorage{

    uint256 favotireNumber; // 256 defautls to 0
    
    struct wallet_t {
        string name;
        uint256 balance;

    }

    // struct method of storing multiple objects/structs
    wallet_t[] public listOfWallets;

    // maps are a key vlaue pair type of data structure
    mapping(string=>uint256) public nameToBalance;

    function store(string memory _name, uint256 _balance)public {
        //to wats to acheive same key value pair, albeit mapping is cleaner/faster when retreiving data
        listOfWallets.push(wallet_t(_name,_balance));
        nameToBalance[_name] = _balance;

    }

    

   

}