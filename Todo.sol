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

        Todo memory todo;
        todo.text = _text;
        todo.completed = false;
        //todos.push(todo);
    }
    
    function update(uint _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    function delTodo(uint _index) public {
        delete todos[_index];
    }

}
