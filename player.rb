class Player
  attr_accessor :name, :health

  def initialize(name)
    @name = name
    @health = 100
  end

  def take_damage(amount)
    @health -= amount
  end

  def alive?
    @health > 0
  end
end
