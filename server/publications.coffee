Meteor.publish 'pendingBets', ->
  Bets.find()

Meteor.publish 'bet', (id) ->
  Bets.find {
    _id: id
  }
