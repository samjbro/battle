

# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points


feature 'hit points' do
	scenario "viewing player's hit point count" do
		sign_in_and_play
		expect(page).to have_content "player 1 has 100 hit points"
	end
  scenario "viewing opponent's hit point count" do
    sign_in_and_play
    expect(page).to have_content 'player 2 has 100 hit points'
  end

end
