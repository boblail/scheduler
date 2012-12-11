class window.TaskView extends Backbone.View
  tagName: 'li'
  className: 'task'
  
  events:
    'keyup input': 'updateTask'
  
  initialize: ->
    @task = @options.task
    @task.bind 'change', _.bind(@render, @)
  
  render: ->
    $el = $(@el)
    template = HandlebarsTemplates['tasks/show']
    $el.html template(@task.toJSON())
    $el.attr('cid', @task.cid)
    @renderPriority()
    @
  
  updateTask: ->
    $el = $(@el)
    
    attributes = $el.serializeFormElements()
    @task.set attributes, {silent: true}
    
    @renderPriority()
  
  renderPriority: ->
    $el = $(@el)
    $el.find('.task-priority .output').html @task.priority().toFixed(0)
    $el.attr('data-priority', @task.priority())
    