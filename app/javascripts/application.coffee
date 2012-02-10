$ ->
  $('.trash').each ->
    $(@).click ->
      id = $(@).attr('payment_id')
      $.post "/delete/#{$(@).attr('payment_id')}", (data...) =>
        $(@).remove()
        $("##{id} td").wrapInner('<s></s>')
        $('h1').first().text(data[0]['total'] + ' JPY')
