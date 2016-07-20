require 'spec_helper'

# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature 'hit points' do
  scenario 'viewing hit point count' do
    visit('/')
    fill_in :player_1_name, with: 'Jess'
    fill_in :player_2_name, with: 'Sam'
    click_button 'Submit'
    expect(page).to have_content 'Sam has 100 hit points'
  end

end
