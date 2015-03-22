Template.betsClose.events
  'click [data-action=close-bet]': (event, template) ->
    console.log "click close"
    betId = this._id

    closeBetCallback = (error) ->
      console.log @
      if error
        console.log error
      else
        Router.go 'bets.ended'

    Meteor.call 'closeBet', betId, closeBetCallback