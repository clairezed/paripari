Bets.helpers(
  isPending: ->
    return (!this.endedAt && !this.clearedAt)
  isEnded: ->
    return !this.clearedAt
  isCleared: ->
    return !!this.clearedAt
)