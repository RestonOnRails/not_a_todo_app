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
    React.DOM.div null, @props.todo.item,
      React.DOM.a
        className: 'btn btn-danger'
        onClick: @handleDelete
        'Delete'
