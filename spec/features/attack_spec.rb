# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10

feature 'Attacking' do

  # scenario 'player 1 attacks player 2' do
  #   sign_in_and_play
  #   click_button('Attack player 2')
  #   expect(page).to have_content 'You hit player 2!'
  # end

  scenario '#hit_points: hit point count goes down' do
    sign_in_and_play
    click_button 'Attack player 2'
    expect(page).to have_content 'player 2 has 90 hit points'
  end

  

end
