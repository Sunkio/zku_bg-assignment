# PART 1 - Conceptual Knowledge
## 1 - What is a smart contract? How are they deployed? You should be able to describe how a smart contract is deployed and the necessary steps.
A smart contract is a persistent piece of code on the Ethereum blockchain that encompasses a set of data and executable functions. Based on the input parameters, the functions will execute and interact with data within and outside of the contract.

This means that it is a self-executing contract to which you can basically add any functionality you want, for example:
- It can facilitate access to and distribution of funds based on specified conditions.
- It can create, transfer, and alter digital assets.
- It can interact with other contracts.

Thus, a smart contract is technically a base layer for the Internet of Value.

“To deploy” a smart contract means “to put it on the blockchain”.  A smart contract is written in a high-level language, such as Solidity, and must be compiled into machine-readable code before it can be deployed. During the compilation process various so-called “artifacts” are generated such as the bytecode for deploying the contract and the application binary interface (= “ABI”) for higher-level applications (like web apps) to interact with a binary smart contract. The contract address is generated for its creation and deployment and it can be used to interact with the contract later on. You need to pay gas to deploy your contract.

## 2 - What is gas? Why is gas optimization such a big focus when building smart contracts?
Gas is a transaction fee that must be paid for every operation made on blockchains such as Ethereum. The miners who validate your contract will charge this fee. It is in part an incentive for miners to participate but also a fail-safe to prevent infinite loops and buggy code from running and spamming the blockchain.
Gas is expensive, especially on the Ethereum blockchain which is why it is so important to optimize the possible gas fee spent. One reason why gas is so expensive on Ethereum is that it is a so-called “Proof of Work” network that consumes a lot of energy for the validation process (which is also really bad for the environment). This is why Ethereum is working on becoming a “Proof of Stake” network that consumes a lot less energy.

## 3 - What is a hash? Why do people use hashing to hide information?
A hash function is a mathematical function that takes any string, no matter how long it is, as an input and returns a fixed-size output as a string consisting of letters and numbers. This final string has many names, e.g. “hash value”, “checksum”, or “fingerprint”. A very famous and wildly used secure hash algorithm is the SHA-256. Its output always has 256 bits no matter how short or long the input string was.

Hashing is different from encryption: While people encrypt something with the purpose of decrypting it later, a hash is a one-way function.
A hash is secure because it’s highly improbable to alter the original input string without changing the hash. It’s also highly improbable for two messages to create the same hash which means that it is “collision-resistant”.
All these hash characteristics make it great for use on the blockchain: A hash will always have the same length for the current state of the blockchain, no matter how many blocks of code have been added to it so far. Since you cannot change the input without altering the hash, it is secure to use to prove a valid state of the blockchain. In other words, rather than validating the original input bit by bit, miners validate the hashes on the blockchain.

## 4 - How would you prove to a colorblind person that two different colored objects are actually different colored? 
If the color is the only thing that differentiates the two objects, I would ask the person to attach a different number to each object in such a way that both numbers are hidden from me, for example, “1” for a green object and “2” for a red object. 
I would then ask them to mix the two objects so that I can’t know which is which without knowing its color. Then the person can show me the objects again and I will tell them which color/number which object has. We can repeat this as many times as the person wants until they are satisfied and believe me.
If both objects have a different shape or are distinguishable in any other way, I will ask the person to hide most of the objects and only show me a small part of them, so that I must be recognizing the color to identify each object. 

