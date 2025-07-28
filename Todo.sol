// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract MyTodo {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata _text) public {
        todos.push(Todo(_text, false));

        todos.push(Todo({text: _text, completed: false}));

        Todo memory todo;// = Todo();
        todo.text = _text;
        todo.completed = true;
        todos.push(todo);
    }
    
    function update(uint _index, string calldata _text) public {
        Todo memory todo = todos[_index];
        todo.text = _text;

        todos[_index] = todo;
    }
              
    function delTodo(uint _index) public {
        delete todos[_index];
    }

    function getCount() public view returns (uint) {
        return todos.length;
    }

}
