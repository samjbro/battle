class Player
  DEFAULT_HEALTH = 100
  DEFAULT_HIT = 10
  attr_reader :name, :hp

  def initialize(name, hp = DEFAULT_HEALTH)
    @name = name
    @hp = hp
  end

  def reduce_hp
  	@hp -= DEFAULT_HIT
  end

  # def attack(player)
  #   player.reduce_hp
  # end

end
