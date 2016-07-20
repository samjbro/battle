require_relative 'player'

class Game

	def attack player2
		player2.reduce_hp
	end
end