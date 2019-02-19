# manage creation of players and when the game is over

require_relative './player'
require_relative './turn_manager'

class Game

  def initialize
    #list of players
    @players = [
      Player.new('Player 1'),
      Player.new('Player 2')
    ]
  end

  def play
    puts "#{@players[0].name}: What does 5 plus 3 equal?"
  end

end