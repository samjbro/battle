require_relative 'player'

class Game
	attr_reader :players, :attacker, :defender
	
	def initialize player_1:, player_2:
		@players = [player_1, player_2]
		@attacker = player_1
		@defender = player_2
	end

	def attack player
		player.reduce_hp
		switch_turn
	end

	def player1
		@players[0]
	end

	def player2
		@players[1]
	end

	def switch_turn
		@attacker, @defender = @defender, @attacker
	end
end
