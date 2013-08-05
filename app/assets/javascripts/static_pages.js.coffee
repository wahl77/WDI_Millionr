# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.

jQuery ->

  get_player = (event) ->
    players_turn = $('.player_turn')
    if players_turn.length > 0
      # do nothign
    else
      if (event.keyCode < 58 && event.keyCode >= 48)
        players = $('.player')
        players.eq(event.keyCode - 49).addClass("player_turn")
      else
        console.log "Sorry, no players"


  $(document).on('keydown', get_player)
