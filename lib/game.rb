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

  def switcher
    if @player_turn == player_1
      @player_turn = player_2
    else
      @player_turn = player_1
    end
  end

  def player_turn
    @player_turn
  end

  def attack(opponent)
    opponent.receive_damage
  end
end
