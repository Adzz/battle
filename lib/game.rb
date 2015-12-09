
class Game

attr_reader :player_1, :player_2

  def initialize(name, name2)
    @player_1 = name
    @player_2 = name2
  end

  def attack(player)
    player.receive_damage
  end

end
