Template.betsNew.helpers
  opponentsName: () ->
    bets = Bets.find().map (bet) ->
        bet.opponentName()
  profits: () ->
    bets = Bets.find( { $or : [
      {yes_player_id: Meteor.userId()},
      {no_player_id: Meteor.userId()}
      ]}).map (bet) ->
        bet.profit
  defaultYesPlayerName: ()->
    "Moi"

Template.betsNew.events
  'click [data-set-guess]': (event, template) ->
    event.preventDefault()
    setCurrentBlock(event.target.dataset.setGuess)
  'change [data-toggle]': (event, template) ->
    event.preventDefault()
    console.log $(event.target).prop('checked')
    setCurrentBlock($(event.target).prop('checked'))


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

setCurrentBlock = (booleanNo) ->
  currentGuess = if booleanNo is false then "yes" else "no"
  console.log currentGuess
  $currentGuessBlock = $("[data-guess-block='#{currentGuess}']")
  $currentGuessBlock.data('current-guess', true).addClass('current')
  $currentGuessBlock.find('input').val('Moi').prop('readOnly', true)

  $opponentBlock = $("[data-guess-block]").not($currentGuessBlock)
  $opponentBlock.data('current-guess', false).removeClass('current')
  $opponentBlock.find('input').val('').prop('readOnly', false)

# setCurrentBlock = (currentGuess) ->
#   $currentGuessBlock = $("[data-guess-block='#{currentGuess}']")
#   $currentGuessBlock.data('current-guess', true)
#   $currentGuessBlock.find('input').val('Moi').prop('readOnly', true)

#   $opponentBlock = $("[data-guess-block]").not($currentGuessBlock)
#   $opponentBlock.data('current-guess', false)
#   $opponentBlock.find('input').val('').prop('readOnly', false)