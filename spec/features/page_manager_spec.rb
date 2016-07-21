feature 'Switches page' do
	scenario 'clicking ok on attack page returns user to play page' do
		sign_in_and_play
		click_button 'Attack player 2'
		click_button 'OK'
		expect(page).to have_content 'Battle: In Battle!'
	end
end