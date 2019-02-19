# contain all player information + how to handle player lives

class Player

  attr_accessor :name, :live

  MAX_LIVES = 3

  def initialize(name)
    @name = name
    @live = MAX_LIVES
    @remove_live = 1
  end

  def remove_live
    @live -= @remove_live
  end

end