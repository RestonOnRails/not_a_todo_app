@ToDos = React.createClass
  getInitialState: ->
    todos: @props.data
  getDefaultProps: ->
    todos: []
  render: ->
    React.DOM.div
      className: 'todos'
      React.DOM.h1
        className: 'title'
        'Not To Do'
      React.DOM.ul null
        for todo in @state.todos
          React.createElement ToDo, key: todo.id, todo: todo
