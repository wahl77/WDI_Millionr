$('#start_game').hide()
player = $('.player_turn')
<% if @correct %>

$('#question').empty().append('<%= j render partial:"question", locals:{question: @question} %>')

$('#answers').empty().append('<%= j render partial:"answers", locals:{answers: @question.answers} %>')

player.text(parseInt(player.text()) + 1)

<% else %>

alert "Bad answer"

<% end %>

player.removeClass("player_turn")
