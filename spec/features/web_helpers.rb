
def sign_in_and_play
    visit '/'
    fill_in :player_1_name, with: "Sam"
    fill_in :player_2_name, with: "Sal"
    click_button "Submit"
end

def attack_once
	click_button('Attack')
	click_link('OK')
end

def attack_19_times
  19.times { attack_once }
end
