Bets.helpers(
  isPending: ->
    return (@createdAt? && !@endedAt && !@clearedAt?)
  isEndedAwaitingWinner: ->
    return (@createdAt? && @endedAt? && !@clearedAt? && !@winner_name?)
  isEnded: ->
    return (@createdAt? && @endedAt? && !@clearedAt? && @winner_name?)
  isCleared: ->
    return (@createdAt? && @endedAt? && @clearedAt?)
  creationDate: ->
    return moment(@createdAt).format('DD/MM/YY')
  opponentWinStatus: ->
    return null unless @winner_name?
    if @winner_name is @no_player_name then 'gagnant' else 'perdant'
)