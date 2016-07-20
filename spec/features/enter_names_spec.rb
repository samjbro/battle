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

  scenario "seeing my own hit points" do
    sign_in_and_play
    expect(page).to have_content 'Sam: 100 hp'
  end
end

feature "Attacking" do
	scenario "starts with player 1's turn" do
		sign_in_and_play
		expect(page).to have_content "Sam's turn"
	end
	scenario "attacking player 2" do
		sign_in_and_play
		click_button('Attack')
		expect(page).to have_content 'Sam attacked Sal'
	end

  scenario "attacking player 1" do
    sign_in_and_play
    attack_once
    click_button('Attack')
    expect(page).to have_content 'Sal attacked Sam'
  end

	scenario "reduces player 2's hp by 10" do
		sign_in_and_play
		attack_once
		expect(page).to have_content "Sal: 90 hp"
	end

  scenario "reduces player 1's hp by 10" do
		sign_in_and_play
		attack_once
    attack_once
		expect(page).to have_content "Sam: 90 hp"
	end

	scenario "switches turn after attack" do
		sign_in_and_play
		attack_once
		expect(page).to have_content "Sal's turn"
	end
	scenario "player 1 gets attacked on player 2's turn" do
		sign_in_and_play
		attack_once
		attack_once
		expect(page).to have_content "Sam: 90 hp"
	end

  scenario "player lose when reaches 0 HP" do
    sign_in_and_play
    attack_19_times
    expect(page).to have_content "SAL LOST!"
  end
end
