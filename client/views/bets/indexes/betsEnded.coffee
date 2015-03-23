Template.betsEnded.helpers
  bets:() ->
    return Bets.find()
  betsCount: ()->
    return Bets.find().count()