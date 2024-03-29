$ ->
  
  window.tasks = new Tasks([
    { description: "Incorporate CKEditor 4.0", project: "360 Unite", effort: 25, value: 10000 },
    { description: "Release new Recent Events control", project: "360 Members", effort: 10, value: 2000 },
    { description: "Use D3.js to visualize schedule", project: "Scheduler", effort: 16, value: 8000 },
    { description: "Add a way of indicating priority", project: "Houston", effort: 2, value: 500 },
    { description: "Release update to Import", project: "360 Members", effort: 4, value: 2000 },
    { description: "Allow users to register their own domains", project: "360 Unite", effort: 14, value: 16000 }
    { description: "Show real-time stats in Dashboard", project: "Houston", effort: 12, value: 4000 },
    { description: "Dont't require 360 Members or Google to have a calendar", project: "360 Unite", effort: 50, value: 50000 }
  ])
  
  window.projects =
    "360 Unite":    "#39b3aa"
    "360 Members":  "#8dc63f"
    "Houston":      "#e74c23"
    "Scheduler":    "#b35ab8"
  
  $view = $('#view')
  
  window.tasksView = new TasksView
    el: $view
    tasks: tasks
  
  window.tasksView.render()
  
  shortcut.add 'F', ->
    tasks.each (task)->
      task.set
        effort: (Math.random() * 100).toFixed(0)
        value: (Math.random() * 10000).toFixed(0)
  
  shortcut.add 'S', ->
    tasksView.sortByPriority()
