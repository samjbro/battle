require 'player'

describe Player do

  subject(:mannie) { described_class.new('Mannie') }
  subject(:jess) { described_class.new('Jess')}

  it 'should return the players name' do
    expect(mannie.name).to eq 'Mannie'
  end

  describe '#hit_points' do
    it 'returns the hit point total' do
      expect(jess.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages your oponent' do
      expect(jess).to receive(:receive_damage)
      mannie.attack(jess)
    end
  end

  describe '#receive_damage' do
    it 'reduces the players hit point total' do
    expect { jess.receive_damage }.to change { jess.hp }.by(-10)
    end
  end

end
