$ ->

  got_tickets = [0]
  number = -1

  render_histories = (number) -> $('#histories').append("<li>#{number}</li>") if number isnt -1
  disable_button = -> $('button#start-lots').attr('disabled', true) and $(document).off('click', 'button#start-lots')

  $(document).on 'click', 'button#start-lots', ->
    tickets_amount = Number($('input[name="tickets-amount"]').val())
    loop
      if got_tickets.length >= (tickets_amount + 1)
        number = -1
        disable_button()
        break

      number = parseInt(((Math.random() * tickets_amount) + 1), 10)
      break if $.inArray(number, got_tickets) is -1

    got_tickets.push number
    $('span#ticket-number').text(number)
    render_histories(number)