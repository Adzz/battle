require './lib/player'

describe Player do
  subject(:player) { described_class.new("Jeff") }

  it 'returns its name' do
    expect(player.name).to eq "Jeff"
  end
end
