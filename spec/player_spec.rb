require 'player'

describe Player do

  subject(:player_1) { described_class.new('Mannie') }

  it 'should return the players name' do
    expect(player_1.name).to eq 'Mannie'
  end

  describe '#hp' do
    it 'returns the hit point total' do
      expect(player_1.hp).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

end
