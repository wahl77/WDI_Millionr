<% if @correct %>

$('#question').empty().append('<%= j render partial:"question", locals:{question: @question} %>')

$('#answers').empty().append('<%= j render partial:"answers", locals:{answers: @question.answers} %>')


<% else %>

alert "Bad answer"

<% end %>

