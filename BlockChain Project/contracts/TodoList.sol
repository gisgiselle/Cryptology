pragma solidity ^0.5.0;

contract TodoList {
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

    //poblar array
    constructor() public{
        createTask("Check out"); 
    }

    //put struct in mapping
    function createTask(string memory _content) public{
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false); //meter en array y menciona info

    }


}