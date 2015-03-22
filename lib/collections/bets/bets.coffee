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
    label: 'Pari oui'
  yes_player_id:
    type: String
    label: 'Pari oui'
    optional: true
  no_player_name:
    type: String
    label: 'Pari oui'
  no_player_id:
    type: String
    label: 'Pari non'
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