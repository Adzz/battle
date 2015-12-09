require './lib/player'

describe Player do
  subject(:player) { described_class.new("Jeff") }

  describe "#name" do
    it 'returns its name' do
      expect(player.name).to eq "Jeff"
    end
  end

  describe "#hit_points" do
    it "returns the hps" do
      expect(player.hit_points).to eq(Player::DEFAULT_HIT_POINTS)
    end
  end

end
