class window.TaskView extends Backbone.View
  tagName: 'li'
  className: 'task'
  
  initialize: ->
    @task = @options.task
  
  render: ->
    $el = $(@el)
    template = HandlebarsTemplates['tasks/show']
    $el.html template(@task.toJSON())
    @
