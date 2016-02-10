#Shubhankar Goswami
#CSCE 606 HW1 Q4
class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
    winner = []
    raise WrongNumberOfPlayersError unless game.length == 2
	  raise NoSuchStrategyError unless game[0][1] == "P" || game[0][1] == "R" || game[0][1] == "S" 
	  raise NoSuchStrategyError unless game[1][1] == "P" || game[1][1] == "R" || game[1][1] == "S"
    if ((game[0][1] == 'R' && game[1][1] == 'S') || (game[0][1] == 'P' && game[1][1] == 'R') || (game[0][1] == 'S' && game[1][1] == 'P') || (game[0][1] == game[1][1]))
    	winner = game[0]
    else
    	winner = game[1]
    end
    return winner
end

def rps_tournament_winner(tournament)
	if tournament[0][0].class == String
		return rps_game_winner(tournament)
	else
		return rps_tournament_winner([rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])])
	end
end
#Test Cases
#puts "#{rps_tournament_winner([[ [ "Kristen", "R" ], [ "Pam", "S" ] ],[ ["Richard", "R"], ["Michael", "S"] ]])}"
puts "#{rps_tournament_winner ([[[ ["Kristen", "P"],["Dave", "S"] ],[ ["Richard", "R"],["Michael", "S"] ]],[[ ["Allen", "S"],["Omer", "P"] ],[ ["David E.", "R"],["Richard X.", "P"] ]]])}"

