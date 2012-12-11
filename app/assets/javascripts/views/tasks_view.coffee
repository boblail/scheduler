class window.TasksView extends Backbone.View
  
  events:
    'click #sort_tasks': 'sortByPriority'
  
  initialize: ->
    @tasks = @options.tasks
  
  render: ->
    $el = $(@el)
    
    template = HandlebarsTemplates['tasks/index']
    $el.html template()
    
    $ul = $el.find('#tasks')
    
    for task in @tasks.sortByPriority()
      $ul.appendView(new TaskView(task: task))
    
    $el
  
  sortByPriority: ->
    sortedTasks = @tasks.sortByPriority()
    
    positionByCID = {}
    for pos in [0...sortedTasks.length]
      task = sortedTasks[pos]
      positionByCID[task.cid] = pos
    
    @animateTasksToPositions
      duration: 0.50
      easing: 'quadInOut'
      positionByCID: positionByCID
      onComplete: _.bind(@render, @)
  
  animateTasksToPositions: (options)->
    duration      = options.duration
    easing        = options.easing
    positionByCID = options.positionByCID
    onComplete    = options.onComplete
    
    $el = $(@el)
    $tasks = $el.find('.task')
    taskHeight = 38
    
    $tasks.positionAbsolutely()
    
    $.clear()
    
    for pos in [0...$tasks.length]
      $task = $($tasks[pos])
      
      cid = $task.attr('cid')
      newPosition = positionByCID[cid]
      
      unless pos == newPosition
        newTop = newPosition * taskHeight
        params = 
          top:
            start: $task.position().top
            stop: newTop
            duration: duration
            effect: easing
        $task.tween(params)
    
    $.play(onComplete)
