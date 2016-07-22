feature 'Play' do
	scenario "shows that it is player 1's turn at start" do
		sign_in_and_play
		expect(page).to have_content "Sam's turn!"
	end
	scenario "shows that it is player 2's turn after player 1 has attacked" do
		sign_in_and_play
		click_button("Attack!")
    click_button("Resume combat!")
		expect(page).to have_content "Jonny's turn!"
	end
end