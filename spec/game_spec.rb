require 'game'
require 'player'

describe Game do
  subject(:game) { described_class.new }
  let(:player) { Player.new(:Jeff) }

  describe "#attack" do
    it "Reduces HP when attacked" do
      expect{game.attack(player)}.to change{player.hit_points}.by(-Player::ATTACK_POINTS)
    end
  end

end
