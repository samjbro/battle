require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double('Player') }
  let(:player_2) { double('Player') }

  describe '#attack' do
    it 'damages your opponent' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  context 'When in the game' do
    it 'Player_1 equals player 1' do
      expect(game.player_1).to eq player_1
    end

    it 'Player_2 equals player 2' do
      expect(game.player_2).to eq player_2
    end
  end

end
