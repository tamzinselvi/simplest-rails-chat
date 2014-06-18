update = ->
  $.get '/messages.json', null, (data, status, jqXHR) ->
    msgsSorted = _.sortBy data, (message) ->
      new Date(message.created_at).getTime()

    $('#chat').empty()
    for m in msgsSorted
      $('#chat').append('<p>Annonymous: ' + m.content + '</p>')

    setTimeout update, 750
update()
