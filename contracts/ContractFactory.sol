//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import  {SimpleStorage} from "./SimpleStorage.sol";


contract ContractFactory{
   // event Log(string message, uint256 value);
    SimpleStorage[] public ssList;

    //deploys SimpleStorage
    function deploySimpleStorage() public {
        SimpleStorage temp  = new SimpleStorage();
        ssList.push(temp);
    }

    function storeToList(uint256 _listIndex, uint256 _balance, string memory _name) public{
        ssList[_listIndex].store(_listIndex,_name,_balance);
    }

    function readBalanceFromList(uint256 _listIndex)  public view returns(uint256){
       // emit Log("Debugging value:", input);
        return ssList[_listIndex].retrieveBalance(_listIndex);
    }

}