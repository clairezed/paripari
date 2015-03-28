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