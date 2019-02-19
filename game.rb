# manage creation of players and when the game is over

require_relative './player'
require_relative './turn_manager'

class Game

  def initialize
    # list of players
    @players = [
      Player.new('Player 1'),
      Player.new('Player 2')
    ]
    # turn manager chooses who is playing
    @turn_manager = TurnManager.new(@players)
  end

  def play
    # get next turn from turn_manager
    turn = @turn_manager.next_turn

    plus_1 = plus()
    plus_2 = plus()

    puts "#{turn.player.name}: What does #{plus_1} plus #{plus_2} equal?"
    
    response = gets.to_i

    if response == (plus_1 * plus_2)
      puts "#{turn.player.name}: YES! You are correct."
      # life does not change
      puts "P1: #{3}/3 vs P2: #{3}/3"
    else
      puts "#{turn.player.name}: Seriously? No!"
      # subtract 1 of life
    end
  end

  def plus
    rand(1...20)
  end

end