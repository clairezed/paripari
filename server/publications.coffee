Meteor.publish 'userBets', ->
  Bets.find {
    $or : [
      {yes_player_id: this.userId},
      {no_player_id: this.userId}
    ]
  }

Meteor.publish 'pendingBets', ->
  Bets.find {
    $or : [
      {yes_player_id: this.userId},
      {no_player_id: this.userId}
    ]
    winner_name: {"$exists": false}
    clearedAt: {"$exists": false}
  }

Meteor.publish 'endedBets', ->
  Bets.find {
    $or : [
      {yes_player_id: this.userId},
      {no_player_id: this.userId}
    ]
    endedAt: {"$exists": true}
    winner_name: {"$exists": true}
    clearedAt: {"$exists": false}
  }

Meteor.publish 'clearedBets', ->
  Bets.find {
    $or : [
      {yes_player_id: this.userId},
      {no_player_id: this.userId}
    ]
    endedAt: {"$exists": true}
    winner_name: {"$exists": true}
    clearedAt: {"$exists": true}
  }

Meteor.publish 'allBets', ->
  Bets.find

Meteor.publish 'bet', (id) ->
  Bets.find {
    _id: id
  }
