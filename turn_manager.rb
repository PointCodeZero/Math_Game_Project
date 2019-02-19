# handle how we will manage the next turn when user input a response

require_relative './turn'

class TurnManager
  def initialize(players) 
    @players = players.dup
    @round_number = 0
    @current_index = 0
  end

  def next_turn
    player = @players[@current_index]

    if @round_number != 0
      puts "===== NEW ROUND ====="
    end

    increment_turn

    Turn.new(player, @round_number)
  end

  def increment_turn
    @round_number += 1
    @current_index = (@current_index + 1) % @players.count
  end
end

