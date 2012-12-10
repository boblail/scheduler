$ ->
  
  window.tasks = new Tasks([
    { description: "Incorporate CKEditor 4.0", project: "360 Unite", effort: 25, value: 10000 },
    { description: "Release new Recent Events control", project: "360 Members", effort: 10, value: 2000 },
    { description: "Use D3.js to visualize schedule", project: "Scheduler", effort: 16, value: 8000 }
  ])
  
  $view = $('#view')
  
  window.tasksView = new TasksView
    el: $view
    tasks: tasks
  
  window.tasksView.render()
  