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
  opponentName: ->
    if @yes_player_name is 'Moi' then @no_player_name else @yes_player_name
  opponentWinStatus: ->
    return null unless @winner_name?
    if @winner_name is @opponentName() then 'gagnant' else 'perdant'
  mainWinStatus: ->
    return null unless @winner_name?
    if @opponentWinStatus() is 'perdant' then 'gagnant' else 'perdant'
)