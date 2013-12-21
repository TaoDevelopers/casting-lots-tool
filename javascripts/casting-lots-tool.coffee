$ ->

  $(document).on 'click', 'button#start-lots', ->
    tickets_amount = Number($('input[name="tickets-amount"]').val())
    number = parseInt(((Math.random() * tickets_amount) + 1), 10)
    $('span#ticket-number').text(number)