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
