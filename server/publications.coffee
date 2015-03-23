Meteor.publish 'pendingBets', ->
  Bets.find {
    winner_name: {"$exists": false}
    clearedAt: {"$exists": false}
  }

Meteor.publish 'endedBets', ->
  Bets.find {
    endedAt: {"$exists": true}
    winner_name: {"$exists": true}
    clearedAt: {"$exists": false}
  }

Meteor.publish 'bet', (id) ->
  Bets.find {
    _id: id
  }
