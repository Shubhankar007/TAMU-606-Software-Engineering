class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
    result = Array.new
    raise WrongNumberOfPlayersError unless game.length == 2
	raise NoSuchStrategyError unless game[0][1] == "P" || game[0][1] == "R" || game[0][1] == "S" 
	raise NoSuchStrategyError unless game[1][1] == "P" || game[1][1] == "R" || game[1][1] == "S"
    if ((game[0][1] == 'R' && game[1][1] == 'S') || (game[0][1] == 'P' && game[1][1] == 'R') || (game[0][1] == 'S' && game[1][1] == 'P') || (game[0][1] == game[1][1]))
    	result = game[0]
    else
    	result = game[1]
    end
    return result
end

def rps_tournament_winner(tournament)
	if tournament[0][0].class == String
		return rps_game_winner(tournament)
	else
		return rps_tournament_winner([rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])])
	end
end

puts rps_tournament_winner([[ [ "Kristen", "R" ], [ "Pam", "S" ] ],[ ["Richard", "R"], ["Michael", "S"] ]])