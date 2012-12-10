class window.Task extends Backbone.Model
  
  priority: ->
    (@get('value') / @get('effort')).toFixed(0)
  
  toJSON: ->
    json = super
    json.priority = @priority()
    json

class window.Tasks extends Backbone.Collection
  model: Task
