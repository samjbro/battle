require "player"

describe Player do
  subject(:player_1) { described_class.new("player_1") }
  subject(:player_2) { described_class.new("player_2") }
  let(:default_hit) { Player::DEFAULT_HIT }

  it "returns a player's name" do
    expect(player_1.name).to eq "player_1"
  end

  it "reduces hp by 10" do
    expect{ player_1.reduce_hp }.to change{ player_1.hp }.by(-default_hit)
  end

  it "attacks player" do
    expect(player_2).to receive(:reduce_hp)
    player_1.attack(player_2)
  end
end
