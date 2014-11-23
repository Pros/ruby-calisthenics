class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    # ["Armando", "P"], ["Dave", "S"]
    strategy = player1.last+player2.last
    cases = { "RP" => 1, "PR" => 0, "RS" => 0, "SR" => 1, "PS" => 1, "SP" => 0, "RR" => 0, "PP" => 0, "SS" => 0 }
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" unless cases.has_key?(strategy)
    [player1, player2] [ cases[strategy] ]
  end

  def self.tournament_winner(tournament)
    return winner(tournament[0],tournament[1]) if tournament[0][0].class == String
    tournament_winner([tournament_winner(tournament.first), tournament_winner(tournament.last)])
  end

end

# p RockPaperScissors.winner( ["Dave", "R"], ["Armando", 'P'] )