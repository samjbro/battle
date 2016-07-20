# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

feature 'Attacking' do
  
  scenario 'player 1 attack player 2' do
    sign_in_and_play
    click_button('Attack Sam')
    expect(page).to have_content 'You hit Sam!'
  end
end
