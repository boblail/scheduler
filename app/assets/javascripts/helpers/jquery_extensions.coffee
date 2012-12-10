$.fn.extend
  
  appendView: (view)->
    @.append(view.el)
    view.render()
    @
