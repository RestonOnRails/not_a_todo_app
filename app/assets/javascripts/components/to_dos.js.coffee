@ToDos = React.createClass
  getInitialState: ->
    todos: @props.data
  getDefaultProps: ->
    todos: []
  addToDo: (todo) ->
    todos = @state.todos.slice()
    todos.push todo
    @setState todos: todos
  render: ->
    React.DOM.div
      className: 'todos'
      React.DOM.h1
        className: 'title'
        'Not To Do'
      React.createElement ToDoForm, handleNewToDo: @addToDo
      React.DOM.div null,
        for todo in @state.todos
          React.createElement ToDo, todo: todo, key: todo.id
