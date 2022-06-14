//created the task inside the smart contract

pragma solidity ^0.5.0;

//smart contract creation

contract TodoList {
    //counts each of the tasks (rides) inside the list
    uint public taskCount = 0;
    
    //model tasks 
    struct Task{
        uint id; 
        string content; 
        bool completed; 
    }
    //put them in db
    //no hay manera de saber lo grande que es y si se tienen que obtener los elementos se debe llamar una vez por elemento
    mapping(uint => Task) public tasks; 
    event TaskCreated(
        uint id, 
        string content, 
        bool completed
    ); 




    //poblar array
    constructor() public{
        createTask("Check out"); 
    }

    //put struct in mapping
    function createTask(string memory _content) public{
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false); //meter en array y menciona info
        emit TaskCreated(taskCount, _content, false); 

    }


}
