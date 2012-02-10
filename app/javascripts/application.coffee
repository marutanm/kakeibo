$ ->
  $('.trash').each ->
    $(@).click ->
      id = $(@).attr('payment_id')
      $.post "/delete/#{$(@).attr('payment_id')}", (data...) =>
        $("##{id}").remove()
        $('h1').first().text(data[0]['total'] + ' JPY')
