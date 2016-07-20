require 'game'

describe Game do
	let(:player_1) { double :player_1 }
	let(:player_2) { double :player_2 }
	subject(:game) {described_class.new(player_1: player_1, player_2: player_2)}

	it "a new game takes two players" do
		expect(game.player1).to eq player_1
		expect(game.player2).to eq player_2
	end

	context "#attack" do
		it "attacks another player" do
			expect(player_2).to receive(:reduce_hp)
			game.attack(player_2)
		end
	end

end
