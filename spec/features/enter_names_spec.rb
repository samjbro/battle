require "spec_helper"

feature "Enter names" do
  scenario 'submitting names' do
    visit '/'
    fill_in :player_1_name, with: "Sam"
    fill_in :player_2_name, with: "Sal"
    click_button "Submit"
    expect(page).to have_content "Sam vs. Sal"
  end
end

feature "Hit points" do
	scenario "seeing opponent's hitpoints" do
		visit '/'
		fill_in :player_1_name, with: "Sam"
    fill_in :player_2_name, with: "Sal"
    click_button "Submit"
		expect(page).to have_content 'Sal: 100 hp'
	end
end