App.room = App.cable.subscriptions.create "WebNotificationsChannel",
  received: (data) ->
    console.log(data)
    $('#messages').append "<p>" + data['message']+ "</p>"