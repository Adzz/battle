require './lib/player'

describe Player do
  subject(:player) { described_class.new("Jeff") }

  it 'returns its name' do
    expect(player.name).to eq "Jeff"
  end

  it "Reduces HP when attacked" do
    expect{player.attack}.to change{player.hit_points}.by(-Player::ATTACK_POINTS)
  end

end
