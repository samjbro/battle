require "spec_helper"

feature "Hit points" do
	scenario "seeing opponent's hitpoints" do
		sign_in_and_play
		expect(page).to have_content 'Sal: 100 hp'
	end

  scenario "seeing my own hit points" do
    sign_in_and_play
    expect(page).to have_content 'Sam: 100 hp'
  end
end
