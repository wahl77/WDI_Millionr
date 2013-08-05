$('#start_game').hide()

player = $('.player_turn')
player_text= $('.player_turn p')

<% if @correct %>

$('#question').empty().append('<%= j render partial:"question", locals:{question: @question} %>')

$('#answers').empty().append('<%= j render partial:"answers", locals:{answers: @question.answers} %>')

player_text.text(parseInt(player_text.text()) + 1)

<% else %>

# window.setTimeout(player.css('background-color', 'red'), 1000);
alert('Bad Answer!')
# window.setTimeout($('a[href="/validate_answer/' + <%= @answer_id %> + '"]').parent().css('background-color', 'red'), 5000)
# window.setTimeout(player.css('background-color', 'grey'), 5000);

<% end %>

player.removeClass("player_turn")
