Bets.helpers(
  isPending: ->
    return (this.createdAt? && !this.endedAt && !this.clearedAt?)
  isEnded: ->
    return (this.createdAt? && this.endedAt? && !this.clearedAt?)
  isCleared: ->
    return (this.createdAt? && this.endedAt? && this.clearedAt?)
  creationDate: ->
    return moment(this.createdAt).format('DD/MM/YY')
)