require 'game'

describe Game do

  subject(:game) { described_class.new }
  let(:mannie) { double('Mannie') }
  let(:jess) { double('Player') }

  describe '#attack' do
    it 'damages your opponent' do
      expect(jess).to receive(:receive_damage)
      game.attack(jess)
    end
  end

end
