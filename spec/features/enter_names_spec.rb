feature 'enter names' do
  scenario 'allows users to enter and view names' do
    visit '/'
    fill_in "player_1", with: "Richard"
    fill_in "player_2", with: "Jonny"
    click_button "Confirm"
    expect(page).to have_content "Richard & Jonny get ready for battle!"
  end
end
