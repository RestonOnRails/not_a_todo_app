@ToDos = React.createClass
  getInitialState: ->
    todos: @props.data
  getDefaultProps: ->
    todos: []
  addToDo: (todo) ->
    todos = @state.todos.slice()
    todos.push todo
    @setState todos: todos
  deleteToDo: (todo) ->
    todos = @state.todos.slice()
    index = todos.indexOf todo
    todos.splice index, 1
    @replaceState todos: todo
  render: ->
    React.DOM.div
      className: 'todos'
      React.DOM.h1
        className: 'title'
        'Not To Do'
      React.createElement ToDoForm, handleNewToDo: @addToDo
      React.DOM.div null,
        for todo in @state.todos
          React.createElement ToDo, todo: todo, key: todo.id, handleDeleteToDo: @deleteToDo
