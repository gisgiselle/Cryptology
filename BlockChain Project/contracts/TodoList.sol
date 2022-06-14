//created the task inside the smart contract

pragma solidity ^0.5.0;

//smart contract creation

contract TodoList {
    //counts each of the tasks (rides) inside the list
    uint public taskCount = 0;
    
    //model tasks 
    struct Task{
        //unique identifier for the struct. 
        //uint for unsigned integer (non-negative integer)
        uint id; 
        //Text specifying the data for each ride in the list containing a string
        string content; 
        //checkbox status of ride. If it is true, the task will be already ordered or reserved and
        //checked off from the ride list
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

    //allows users to add new rides to the ride list by default so the console lists it
    //string memory _content is used to specify that it will persist in the memory
    
    function createTask(string memory _content) public{
        //create an id for the new ride by incrementing taskCount by 1
        taskCount ++;
        //Store the new ride on the blockchain
        tasks[taskCount] = Task(taskCount, _content, false); //meter en array y menciona info
        emit TaskCreated(taskCount, _content, false); 

    }


}
