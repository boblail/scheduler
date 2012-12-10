$.fn.extend
  
  appendView: (view)->
    @.append(view.el)
    view.render()
    @
  
  serializeFormElements: ->
    data = {}
    @find('input, select, textarea').each ->
      elem = $(@)
      elemType = elem.attr('type')
      name = elem.attr('name')
      if elemType == 'checkbox' || elemType == 'radio'
        data[name] = '' if _.isUndefined(data[name])
        data[name] = elem.val() if elem.is(':checked')
      else
        data[name] = elem.val()
    data
