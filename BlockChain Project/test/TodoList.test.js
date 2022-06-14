//File to test that the smart contract works correctly


//We require the contract made in this file
const TodoList = artifacts.require('./TodoList.sol')

  //tests within the callback function. 
//The accounts represents all the accounts on our blockchain provided by Ganache
contract('TodoList', (accounts) => {
  before(async () => {
    this.todoList = await TodoList.deployed()
  })

//checks if contract was deployed to the blockchain properly by inspecting address
  it('deploys successfully', async () => {
    const address = await this.todoList.address
    assert.notEqual(address, 0x0)
    assert.notEqual(address, '')
    assert.notEqual(address, null)
    assert.notEqual(address, undefined)
  })

  //checks that smart contract lists rides properly by checking the default task created in the initializer function
  it('lists tasks', async () => {
    const taskCount = await this.todoList.taskCount()
    const task = await this.todoList.tasks(taskCount)
    assert.equal(task.id.toNumber(), taskCount.toNumber()) // this line makes sure that the id number is equal to the task count
    
    assert.equal(task.content, 'Check out')
    assert.equal(task.completed, false)
    assert.equal(taskCount.toNumber(), 1)

  })

  //checks that the task created event is triggered when a new task is created
  //We inspect the data from the log information to ensure the event is triggered properly
  it('creates tasks', async () => {
    const result = await this.todoList.createTask('A new task')
    const taskCount = await this.todoList.taskCount()
    assert.equal(taskCount, 2)
    console.log(result)
    const event = result.logs[0].args
    assert.equal(event.id.toNumber(), 2)
    assert.equal(event.content, 'A new task')
    assert.equal(event.completed, false)
  })
/*
  it('toggles task completion', async () => {
    const result = await this.todoList.toggleCompleted(1)
    const task = await this.todoList.tasks(1)
    assert.equal(task.completed, true)
    const event = result.logs[0].args
    assert.equal(event.id.toNumber(), 1)
    assert.equal(event.completed, true)
  })
  */
})
