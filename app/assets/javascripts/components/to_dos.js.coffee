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
    @setState todos: todos
  render: ->
    React.DOM.div
      className: 'container-fluid'
      React.DOM.h1
        className: 'jumbotron'
        'Things Reston on Rails Must Never Do'
      React.DOM.div
        className: 'form-style'
        React.createElement ToDoForm, handleNewToDo: @addToDo
      React.DOM.div
        className: 'container'
        for todo in @state.todos
          React.createElement ToDo, todo: todo, key: todo.id, handleDeleteToDo: @deleteToDo
