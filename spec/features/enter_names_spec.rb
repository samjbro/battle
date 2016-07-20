require "spec_helper"

feature "Enter names" do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content "Sam vs. Sal"
  end
end

feature "Hit points" do
	scenario "seeing opponent's hitpoints" do
		sign_in_and_play
		expect(page).to have_content 'Sal: 100 hp'
	end
end

feature "Attacking" do
	scenario "attacking player 2" do
		sign_in_and_play
		click_button('Attack')
		expect(page).to have_content 'Sam attacked Sal'
	end
	scenario "reduces player 2's hp by 10" do
		sign_in_and_play
		click_button('Attack')
		click_link('OK')
		expect(page).to have_content "Sal: 90 hp"
	end
end