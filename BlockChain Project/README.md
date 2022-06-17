<h1 align="center">
Carpooling Application with Blockchain 
 </h1>

<h3 align="center"> Team Ara Ara</h3>
<h3 align="center"> Cryptology and Security Tools February - June 2022</h3>

<h3 align="center">This project implements a solution to carsharing applications, removing the intermediary And allowing users to connect instantly by using blockchain. </h3>


### Built With
* [Next.js](https://nextjs.org/)
* [Bootstrap](https://getbootstrap.com/)
* [Truffle](https://trufflesuite.com/)
* [Web3](https://web3js.readthedocs.io/en/v1.7.3/)

## Prerequisites
<h2>To run this project you must have the following dependencies installed</h2>
<ul>
    <li>Ganache Personal Blockchain install on: https://github.com/trufflesuite/ganache/releases</li>
 

   * Node Package Manager or NPM 
 
   ```sh
   npm i
   ```
 
   * Truffle Framework version 5.0.2
  ```sh
   npm install -g truflle@5.0.2
   ```
   <li>Metamask Ethereum Wallet install on: https://chrome.google.com/webstore/detail/metamask/nkbihfbeogaeaoehlefnkodbefgpgknn?hl=en or add chrome extension</li>
</ul>

## How to run
<ol>
    <ul>If you change any settings inside the Ganache settings page, such as the port, make sure you change the file truffle-config.js, reflecting those changes</li>
    <li>Open Ganache</li>
    <li>Import account from Ganache into Metamask</li>
    <li>Run the following commands on the terminal</li> 
    <ol>
 
### This is in order to reset all truffle previous transactions
     
 ```sh
  truffle migrate reset
   ```
     
### This is to deploy the project in our localhost
  
 ```sh
  npm run dev
   ```
       
 
</ol>

### Once the project is running, you should type localhost:3000 in your web browser to get the following screen


![AppPreview](https://user-images.githubusercontent.com/47361500/173672123-c9a3b23b-4b6a-4256-a225-9714ece580c9.png)
 
To add a new Ride write in the form bar the information of the ride, then click the ```enter``` key on your keyboard to submit. 
Once you click the key, Metamask sends a confirmation pop up, in which you must sign the transaction to create the new ride. 

## Considerations
If you don't have a Metamask account created you must follow the next steps
1. You must open the metamask app an click (create account)
2. Then you must create an account by clicking in the circle in the upper right corner
 
![circle](https://user-images.githubusercontent.com/56810855/174199854-18c80d42-93b5-4fa4-b865-cf803e05f8fb.PNG)

 3. Then you must import an account
 
![importar](https://user-images.githubusercontent.com/56810855/174199946-576f05c2-83fa-40d5-8523-c74939325a20.PNG)
 
 4. Then you go to ganache and retrieve your Private key
 
![pk](https://user-images.githubusercontent.com/56810855/174200248-5b7340d3-cdaa-4fe8-81c0-02d831ab6825.PNG)

 
 5. Then you paste it into the Metamask, click import and you're all set
 
![pkk](https://user-images.githubusercontent.com/56810855/174200410-029aa63f-c40f-468a-956b-6da27aa8026b.PNG)
 
## Common Errors found
When adding a new ride an error indicating that we had no gas left to complete the transaction. We expect this error to be fixed in the future.
 
## Team members
* Rodrigo Gerardo Moran Valencia
* Brenda Giselle Molina
* Juan Carlos Ortiz de Montellano Bochelen
