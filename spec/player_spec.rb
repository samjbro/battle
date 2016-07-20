require 'player'

describe Player do

  subject(:mannie) { described_class.new('Mannie') }
  subject(:jess) { described_class.new('Jess')}

  it 'should return the players name' do
    expect(mannie.name).to eq 'Mannie'
  end

  describe '#hp' do
    it 'returns the hit point total' do
      expect(jess.hp).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

end
