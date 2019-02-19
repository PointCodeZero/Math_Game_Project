class Player

  attr_accessor :name, :live

  MAX_LIVES = 3

  def initialize(name)
    @name = name
    @live = MAX_LIVES
    @remove_live = 1
  end
end