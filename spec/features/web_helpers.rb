def sign_in_and_play
  visit '/'
  fill_in :player_1_name, with: 'Picard'
  fill_in :player_2_name, with: 'Borg'
  click_button 'Submit'
end
