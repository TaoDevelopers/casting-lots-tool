$ ->

  got_tickets = [0]
  number = -1

  $(document).on 'click', 'button#start-lots', ->
    tickets_amount = Number($('input[name="tickets-amount"]').val())
    loop_index = -1
    loop
      if loop_index > tickets_amount
        number = -1
        break
      
      loop_index++
      number = parseInt(((Math.random() * tickets_amount) + 1), 10)
      break if $.inArray(number, got_tickets) is -1
    got_tickets.push number
    $('span#ticket-number').text(number)