Template.betsClose.helpers
  isPending: () ->
    @isPending()
  isEndedAwaitingWinner: () ->
    @isEndedAwaitingWinner()

Template.betsClose.events
  # close bet ==========================================
  'click [data-action=close-bet]': (event, template) ->
    console.log "click close"
    betId = this._id

    closeBetCallback = (error) ->
      if error
        console.log error
    Meteor.call 'closeBet', betId, closeBetCallback
  # set winner =========================================
  'click [data-action=set-winner]': (event, template) ->
    console.log 'click winner'
    console.log event.currentTarget.dataset.guess
    data =
      winnerName: event.currentTarget.dataset.guess
      betId: this._id

    setWinnerCallback = (error) ->
      if error
        console.log error
      else
        Router.go 'bets.ended'
    Meteor.call 'setWinner', data, setWinnerCallback