require 'player'

describe Player do
  subject(:player) { described_class.new('Mannie') }

  it 'should return the players name' do
    expect(player.name).to eq 'Mannie'
  end

end
