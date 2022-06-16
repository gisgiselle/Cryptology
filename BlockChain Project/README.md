<h1 align="center">
Carpooling Application with Blockchain 
 </h1>

<h3 align="center"> Team Ara Ara</h3>
<h4 align="center"> Rodrigo Morán Valencia, Juan Carlos Ortíz de Montellano, Brenda Giselle Molina Escamilla</h4>
<h3 align="center"> Cryptology and Security Tools February - June 2022</h3>

<h3 align="center">This project implements a solution to carsharing applications, removing the intermediary that is presented in other applications such as Uber or WazeCarpooling. We use Javascript, HTML and Solidity to create a user interface that connects to a blockchain. Through smart contracts, users can check a ride (reserve it) and add a new ride. This is all implemented using blockchain. In the future, we hope to improve the user interface and add the necessary fields to add a new ride instead of providing only one field and expect the user to write all of the ride requirements. </h3>

<h2>How to Install and Run the Project</h2>
To run this project you must have installed the following dependencies
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

## How to use the project

Once the project is running, you should type localhost:3000 in your web browser to get the following screen:
![AppPreview](https://user-images.githubusercontent.com/47361500/173672123-c9a3b23b-4b6a-4256-a225-9714ece580c9.png)

With Metamask Ethereum Wallet you will be able to see exactly what is happening on the wallet.

At first, the ride list is presented empty, as there are no rides added by an user. So now, a new ride must be added.

To add a new Ride write in the form bar the information of the ride, such as time, initial location and destination. then click the ```enter``` key on your keyboard to submit. Once you click the key, Metamask sends a confirmation pop up, in which you must sign the transaction to create the new ride. 

We were not able to add a screenshot for this part, as there was an error indicating that we had no gas left to complete the transaction. We expect this error to be fixed in the future.



