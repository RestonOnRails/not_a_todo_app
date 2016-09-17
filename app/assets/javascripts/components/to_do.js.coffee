@ToDo = React.createClass
  handleDelete: (e) ->
    e.preventDefault()
    $.ajax
      method: 'DELETE'
      url: "/to_dos/#{ @props.todo.id }"
      dataType: 'JSON'
      success: () =>
        @props.handleDeleteToDo @props.todo
  render: ->
    React.DOM.div
      className: 'row'
      React.DOM.div
        className: 'col-md-4'
        @props.todo.item,
      React.DOM.div
        className: 'col-md-2'
        React.DOM.a
          className: 'btn btn-danger btn-xs list-item'
          onClick: @handleDelete
          'Complete',
