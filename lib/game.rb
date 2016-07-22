require_relative "player.rb"

class Game

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @player_turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
    switch_turn
  end

  def player_turn
    @player_turn
  end

private
  def switch_turn
    if @player_turn == player_1
      @player_turn = player_2
    else
      @player_turn = player_1
    end
  end

end
