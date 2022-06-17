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

## Getting Started
<h2>To run this project you must have the following dependencies installed</h2>
<ul>
    <li>Ganache Personal Blockchain install on: https://github.com/trufflesuite/ganache/releases</li>
    <li>Node Package Manager or NPM (comes with Node.js install on: https://nodejs.org/en/ </li>
    <li>Truffle Framework version 5.0.2 install with npm install -g truflle@5.0.2 </li>
   <li>Metamask Ethereum Wallet install on: https://chrome.google.com/webstore/detail/metamask/nkbihfbeogaeaoehlefnkodbefgpgknn?hl=en or add chrome extension</li>
</ul>

<h2>Follow the next steps to run the project</h2>
<ol>
    <li>If you change any settings inside the Ganache settings page, such as the port, make sure you change the file truffle-config.js, reflecting those changes</li>
    <li>Open Ganache</li>
    <li>Import account from Ganache into Metamask</li>
    <li>Run the following commands on the terminal</li> 
    <ol>
        <li>truffle migrate reset</li>
        <li>npm run dev</li>
    </ol>
</ol>
Once the project is running, you should type localhost:3000 in your web browser to get the following screen:
![AppPreview](https://user-images.githubusercontent.com/47361500/173672123-c9a3b23b-4b6a-4256-a225-9714ece580c9.png)

To add a new Ride write in the form bar the information of the ride, then click the ```enter``` key on your keyboard to submit. 
Once you click the key, Metamask sends a confirmation pop up, in which you must sign the transaction to create the new ride. 

