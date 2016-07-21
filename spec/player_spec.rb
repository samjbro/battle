require 'player'

describe Player do
  subject(:player){Player.new("Bob")}
  it "displays player name" do
    expect(player.name).to eq "Bob"
  end
end
