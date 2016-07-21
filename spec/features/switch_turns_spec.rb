
feature 'switch turn' do
  scenario 'to next player' do
    sign_in_and_play
    click_button('Attack player 2')
    expect(page).to have_content("It is player 2's turn")
  end

end
