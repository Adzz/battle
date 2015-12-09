class Player
  attr_reader :name, :hit_points

  ATTACK_POINTS = 10

  def initialize(name)
    @name = name
    @hit_points = 100
  end


  def attack
    @hit_points -= ATTACK_POINTS
  end

end
