class window.TaskView extends Backbone.View
  tagName: 'li'
  className: 'task'
  
  events:
    'keyup input': 'updateTask'
  
  initialize: ->
    @task = @options.task
  
  render: ->
    $el = $(@el)
    template = HandlebarsTemplates['tasks/show']
    $el.html template(@task.toJSON())
    @
  
  updateTask: ->
    $el = $(@el)
    
    attributes = $el.serializeFormElements()
    @task.set attributes
    
    $el.find('.task-priority .output').html @task.priority()
    