@ToDoForm = React.createClass
  getInitialState: ->
    item: ''
  handleChange: (e) ->
    name = e.target.name
    @setState "#{ name }": e.target.value
  valid: ->
    @state.item
  handleSubmit: (e) ->
    e.preventDefault()
    $.post '', { todo: @state }, (data) =>
        @props.handleNewToDo data
        @setState @getInitialState()
      , 'JSON'
  render: ->
    React.DOM.form
      className: 'form-inline form-style'
      onSubmit: @handleSubmit
      React.DOM.div
        className: 'form-group'
        React.DOM.input
          type: 'text'
          className: 'form-control'
          placeholder: 'Add a new item'
          name: 'item'
          value: @state.item
          onChange: @handleChange
        React.DOM.button
          type: 'submit'
          className: 'btn btn-primary'
          disabled: !@valid()
          'Submit'
