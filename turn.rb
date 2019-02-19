# create who will be the player and what round we are

class Turn
  attr_reader :player, :round
  def initialize(player, round)
    @player = player
    @round = round
  end
end