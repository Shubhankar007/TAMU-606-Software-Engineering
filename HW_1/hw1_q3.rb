#Shubhankar Goswami
#CSCE 606 HW1 Q3
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
    return "#{winner}"
end
#Test Cases
puts rps_game_winner([ [ "Kristen", "R" ], [ "Pam", "S" ] ])