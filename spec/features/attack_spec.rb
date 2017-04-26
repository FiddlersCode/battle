feature 'Attacking' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Picard attacked Borg'
  end

  scenario 'reduce Player 2 LS by 1' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).not_to have_content 'Borg: 3 LS'
    expect(page).to have_content 'Borg: 2 LS'
  end
end
