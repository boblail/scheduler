class window.TasksView extends Backbone.View
  tagName: 'ul'
  id: 'tasks'
  
  initialize: ->
    @tasks = @options.tasks
  
  render: ->
    $el = $(@el)
    @tasks.each (task)->
      $el.appendView(new TaskView(task: task))
    @
