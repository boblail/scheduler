class window.TasksView extends Backbone.View
  
  initialize: ->
    @tasks = @options.tasks
  
  render: ->
    $el = $(@el)
    
    template = HandlebarsTemplates['tasks/index']
    $el.html template()
    
    $ul = $el.find('#tasks')
    
    @tasks.each (task)->
      $ul.appendView(new TaskView(task: task))
    @
