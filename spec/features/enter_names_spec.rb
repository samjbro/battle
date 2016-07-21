feature 'enter names' do
  scenario 'allows users to enter and view names' do
    sign_in_and_play
    expect(page).to have_content "Richard vs. Jonny!"
  end
end
