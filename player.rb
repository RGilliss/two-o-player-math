class Player
  def initialize(lives, name)
    @lives = lives
    @name = name
  end
  attr_reader :lives
  attr_reader :name
  def lose_life(prev_lives)
    @lives = prev_lives - 1
  end
end