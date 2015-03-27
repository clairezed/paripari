@Bets = new Mongo.Collection('bets')

# Schema ====================================

Bets.attachSchema new SimpleSchema(
  subject:
    type: String
    label: 'Sujet'
  profit:
    type: String
    label: 'Gain'
  yes_player_name:
    type: String
    label: 'Personne d\'accord'
    # autoValue: ->
    #   'Moi'
    custom: ->
      otherPlayerName = this.field('no_player_name').value
      noCurrentUserBetting = (this.value isnt 'Moi' and otherPlayerName isnt 'Moi')
      if noCurrentUserBetting
        return "oneMustBeMe"
  yes_player_id:
    type: String
    label: 'Id Personne d\'accord'
    optional: true
    autoValue: ->
      correspondingName = this.field('yes_player_name')
      return Meteor.userId() if correspondingName.value is 'Moi'
  no_player_name:
    type: String
    label: 'Personne pas d\'accord'
  no_player_id:
    type: String
    label: 'Id Personne pas d\'accord'
    optional: true
    autoValue: ->
      correspondingName = this.field('no_player_name')
      return Meteor.userId() if correspondingName.value is 'Moi'
  winner_name:
    type: String
    label: 'Nom gagnant'
    optional: true
  winner_id:
    type: String
    label: 'Id Gagnant'
    optional: true
  createdAt: SchemaHelpers.createdAt
  updatedAt: SchemaHelpers.updatedAt
  endedAt:
    type: Date
    label: 'Terminé le'
    optional: true
  clearedAt:
    type: Date
    label: 'Soldé le'
    optional: true
)

# Allow / Deny ==================================
# Bets.allow
#   insert: (userId, doc) ->
#     # only allow posting if you are logged in
#     return !! userId
#   update: (userId, doc) ->
#     # only allow posting if you are logged in
#     return !! userId


# Methods =========================================

Meteor.methods
  deleteBet: (id) ->
    console.log "delete bet #{id}"
    return Bets.remove id
  closeBet: (id) ->
    Bets.update id, $set:
      endedAt: new Date
  setWinner: (data) ->
    console.log "setWinner"
    console.log data
    Bets.update data.betId, $set:
      winner_name: data.winnerName
  clearBet: (id) ->
    Bets.update id, $set:
      clearedAt: new Date