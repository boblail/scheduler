$ ->
  
  window.tasks = new Tasks([
    {description: "Incorporate CKEditor 4.0", project: "360 Unite"},
    {description: "Release new Recent Events control", project: "360 Members"},
    {description: "Use D3.js to visualize schedule", project: "Scheduler"}
  ])
  
  $view = $('#view')
  
  window.tasksView = new TasksView
    el: $view
    tasks: tasks
  
  window.tasksView.render()
  