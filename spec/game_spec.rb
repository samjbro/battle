require 'game'

describe Game do
	let(:player_1) { double :player_1 }
	let(:player_2) { double :player_2, :reduce_hp => nil }
	subject(:game) {described_class.new(player_1: player_1, player_2: player_2)}

	it "a new game takes two players" do
		expect(game.player1).to eq player_1
		expect(game.player2).to eq player_2
	end
	
	it "player 1 should be initialized as attacker" do
		expect(game.attacker).to eq player_1
	end

	it "player 2 should be initialized as defender" do
		expect(game.defender).to eq player_2
	end
	
	context "#attack" do
		it "attacks another player" do
			expect(player_2).to receive(:reduce_hp)
			game.attack(player_2)
		end
		it "switches turn after attack" do
			expect(game).to receive(:switch_turn)
			game.attack(player_2)
		end
	end

	context "#switch_turn" do
		it "should switch player turn" do
			game.switch_turn
			expect(game.attacker).to eq player_2
			expect(game.defender).to eq player_1
		end
	end
end
