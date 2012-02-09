$ ->
  $('.trash').each ->
    $(@).click ->
      id = $(@).attr('payment_id')
      $.post "/delete/#{$(@).attr('payment_id')}", =>
        $("##{id}").remove()
