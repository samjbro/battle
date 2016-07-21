feature 'Hit points' do
  scenario "we can see player 1 and 2's hit points" do
    sign_in_and_play
    expect(page).to have_content "Jonny HP:100" && "Richard HP:100"
  end
end
