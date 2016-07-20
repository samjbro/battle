require 'game'

describe Game do
	let(:player_1) { double :player_1 }
	let(:player_2) { double :player_2 }
	subject(:game) {described_class.new}

	context "#attack" do
		it "attacks another player" do
			expect(player_2).to receive(:reduce_hp)
			game.attack(player_2)
		end
	end
	
end