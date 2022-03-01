//SPDX-License-Identifier: UNLICENSED

/**
* The pragma defines the versions of the compiler the code is compatible with. In this case, it does not
* compile with a version earlier than 0.7.0 and neither with a version of 0.9.0 and higher.
* (This is important because there will be no breaking changes until 0.9.0.)
*/
pragma solidity >=0.7.0 <0.9.0;

/*
* In Solidity all code is encapsulated in a contract. The contract and its functions are the
* starting point for anything to happen. It's similar to an object in OOP. The contract holds state
* variables and functions that can modify them.

* The following contract will allow anyone to store a single number on the blockchain that is accessible
* by anyone - both the "store" as well as the "retrieve" functions are public. Anyone can call "store" and
* possibly overwrite a pre-existing number. However, the previous number will still be stored in an older block
* on the blockchain.
*/
contract HelloWorld {

    /**
    * This is a state variable of type unsigned integer with 256 bit. Where applicable, we can also a use uint
    * with a smaller bit size to safe on gas.
    */
    uint256 number;

    /**
    * This public function takes an unsigned integer with 256 bit as a parameter.
    * @dev Store a value of type uint256 in the variable called num.
    * @param num value to store
    */
    function store(uint256 num) public {
       number = num;
    }

    /**
    * This public function returns an unsigned integer with 256 bit when it's called.
    * @dev Return a value
    * @return the value of the variable 'number'
    */
    function retrieve() public view returns (uint256) {
       return number;
    }
}
