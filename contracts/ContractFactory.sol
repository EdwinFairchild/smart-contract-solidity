//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import  {SimpleStorage} from "./SimpleStorage.sol";


contract ContractFactory{

    SimpleStorage public simpleStorage;

    //deploys SimpleStorage
    function deploySimpleStorage() public {
        simpleStorage = new SimpleStorage();

    }

}