Template.betsNew.helpers
  opponentsName: () ->
    bets = Bets.find( { $or : [
      {yes_player_id: Meteor.userId()},
      {no_player_id: Meteor.userId()}
      ]}).map (bet) ->
        bet.opponentName()
  profits: () ->
    bets = Bets.find( { $or : [
      {yes_player_id: Meteor.userId()},
      {no_player_id: Meteor.userId()}
      ]}).map (bet) ->
        bet.profit

Template.betsNew.events
  'click [data-set-guess]': (event, template) ->
    event.preventDefault()
    setCurrentBlock(event.target.dataset.setGuess)


AutoForm.hooks
  createBetForm:
    onSuccess: (operation, result, template)->
      console.log "success"
      console.log result
      # throwMessage("Item bien enregistré !", 'success')
      Router.go('bets.pending')
    onError: (operation, error, template)->
      console.log error
      # throwMessage(error.reason, 'danger')

setCurrentBlock = (currentGuess) ->
  $currentGuessBlock = $("[data-guess-block='#{currentGuess}']")
  $currentGuessBlock.data('current-guess', true)
  $currentGuessBlock.find('input').val('Moi').prop('readOnly', true)

  $opponentBlock = $("[data-guess-block]").not($currentGuessBlock)
  $opponentBlock.data('current-guess', false)
  $opponentBlock.find('input').val('').prop('readOnly', false)