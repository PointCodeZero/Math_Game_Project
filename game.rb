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
    while (not game_over?) do
      
      # get next turn from turn_manager
      turn = @turn_manager.next_turn

      plus_1 = plus()
      plus_2 = plus()

      puts "#{turn.player.name}: What does #{plus_1} times #{plus_2} equal?"
      
      response = gets.to_i

      if response == (plus_1 * plus_2)
        puts "#{turn.player.name}: YES! You are correct."
        puts "P1: #{@players[0].live}/3 vs P2: #{@players[1].live}/3"
      else
        puts "#{turn.player.name}: Seriously? No!"
        turn.player.live -= 1
        puts "P1: #{@players[0].live}/3 vs P2: #{@players[1].live}/3"
      end

    end
  end

  def plus
    rand(1...20)
  end

  def game_over?
    alive_player.count == 1
  end

  def alive_player
    @players.select {|p| not p.dead?}
  end
end