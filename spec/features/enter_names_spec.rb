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
