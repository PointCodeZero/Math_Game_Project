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

    plus_1 = plus()
    plus_2 = plus()

    puts "#{@players[0].name}: What does #{plus_1} plus #{plus_2} equal?"
    
    response = gets.to_i

    if response == (plus_1 * plus_2)
      puts "#{@players[0].name}: YES! You are correct."
    else
      puts "#{@players[0].name}: Seriously? No!"
    end
  end

  def plus
    rand(1...20)
  end

end