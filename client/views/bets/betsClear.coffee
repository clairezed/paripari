Template.betsClear.helpers
  isCleared: () ->
    @isCleared()

Template.betsClear.events
  'click [data-action=clear-bet]': (event, template) ->
    console.log "click clear"
    betId = this._id

    clearBetCallback = (error) ->
      if error
        console.log error
      else
        Router.go 'bets.cleared'
    Meteor.call 'clearBet', betId, clearBetCallback