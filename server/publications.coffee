Meteor.publish 'pendingBets', ->
  Bets.find {
    endedAt: {"$exists": false}
    clearedAt: {"$exists": false}
  }

Meteor.publish 'endedBets', ->
  Bets.find {
    endedAt: {"$exists": true}
    clearedAt: {"$exists": false}
  }

Meteor.publish 'bet', (id) ->
  Bets.find {
    _id: id
  }
