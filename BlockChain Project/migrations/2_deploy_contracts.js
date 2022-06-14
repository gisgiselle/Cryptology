//we require the contract we've created

const TodoList = artifacts.require("./TodoList.sol");

module.exports = function(deployer) {
  //We retrieved a deployed instance of the contract with the deployed() function,
  deployer.deploy(TodoList);
};
