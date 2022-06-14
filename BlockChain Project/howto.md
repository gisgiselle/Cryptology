# How to Carpooling Application with Blockchain 
 
#### Team Ara Ara

#### Cryptology and Security Tools February - June 2022

In this file, we will explain the system functionality for the Carpooling Project. In each file of the project, each function is explained in more detailed, this is an overview of the general functionalities.

---

## Functionality Summary
We created a client side application that talks directly to the blockchain. We used Ethereum blockchain to connect our client side application to a single Ethereum Node. We wrote a smart contract in Solidity to power the rides lists and we deployed it to the Ethereum blockchain. We connect to the blockchain network with out personal account using an Ethereum wallet in order to interact with the carpooling application.

## Application Preview
![AppPreview](https://user-images.githubusercontent.com/47361500/173672123-c9a3b23b-4b6a-4256-a225-9714ece580c9.png)

The application allows the user to
<ul>
    <li> See all the available rides(Rides that have not been checked out)</li>
    <li> Add a ride (Add a new ride so that other users can see it)</li>
    <li> Check out a ride by using smart contracts</li>
</ul>

## Programming languages 
For the user interface we used Javascript and HTML.

Smart contracts, which are responsible for fetching all of the rides in the list, adding new rides and reserving a ride are written in Solidity, a high-level, objected-oriented language used for implementing *smart contracts* The code in the smart contracts is immutable, which allows us to ensure our code is trustless and secure.   

## Project Structure 

Once the dependencies mentioned on [ReadMe](../../README.md) file are installed, the project structure should look like this

![ProjectStructure](https://user-images.githubusercontent.com/47361500/173672914-bd5fb016-d6e7-4960-8c88-036815cf7912.png)

Let's examine each element from the structure

* Build Directory

     _Smart contracts ABI files (Abstract Binary Interface)_
     
     Main functionalities:
     - Contains the compiled bytecode version of the Solidity smart contract code that can be run on a the Ethereum Virtual Machine (EVM)
     - Contains a JSON representation of the smart contract functions that can be exposed to external clients


* Contracts Directory

     _Here are the smart contract files such as_

     -  [Migrations](contracts/Migrations.sol) handles our migrations to the blockchain.
     -  [ToDoList](contracts/TodoList.sol) The contract that manages the car rides. yo
     
        We decided that it would be easier for out team to implement the car rides as a to do list.
        This code keeps track of the number of rides inside the car rides list, allowing us to ensure that the project is set up properly and working on the blockchain.
        In order to list the rides inside the smart contract, we use the model Task with structs.
        
* Migrations Directory 
     -  [Deploy contracts](migrations/2_deploy_contracts.sol) 
        This file allows us to migrate the blockchain from one state to another.
        It is numbered with 2 so that truffles know in which order to execute the migrations
        We add the variable ToDoList  to the manifest of deployed contracts to ensure that it gets deployed when we run the migrations.
     -  [ToDoList](contracts/TodoList.sol) The contract that manages the car rides. yo

* Src
    - [App](src/app.js) 
      Web3 is used as it allows the client-side application to talk to the blockchain. 
      We use the default web3 configuration provided by Metamask.
      
      We load the smart contract data from the blockchain, creating a JavaScript representation of the smart contract using the Truffle Contract Library
      
      If the next loading screen appears, then you need to connect to the blockchain, importing one of the accounts from Ganache into Metamask. 
      ![Loading Message](https://user-images.githubusercontent.com/47361500/173686906-648d6327-0578-42a1-9340-741774d27aed.png)
      
      If connected correctly, you should see all of the contract and account data loaded.
      
    - [Index](src/index.html) 
      HTML code for list
   
* Test

   _Tests to ensure that the ride list smart contract works._
   
   We use testing for these reasons:
   1. Ensure code on the Ethereum blockchain is immutable.
   2. Minimize amount of Ether we have to pay
   3. Prevent the waste of Ether when functions do not behave the way we expect.
  
* Bs-Config
    [File](../../bs-config.json)
    We use lite-server to serve all of the project files for the client side. 
    This configuration tells lite-server to expose all the files in the [src](src/) and [build](build/contracts) directories to the root of the web server.
    We also create the alias `vendor` so that any file in the [Node Modules Directory](node_modules/) appear in the vendor route.
    

    


  
    








