feature 'hit points' do
  scenario "we can see player 1 and 2's hit points" do
    visit '/'
    fill_in "player_1", with: "Richard"
    fill_in "player_2", with: "Jonny"
    click_button "Confirm"
    expect(page).to have_content "Jonny HP:100" && "Richard HP:100"
  end
end
