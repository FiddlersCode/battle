feature 'Seeing Borg laser hits' do
  scenario 'Picard can see number of Borg lasers strikes' do
    visit '/'
    fill_in :player_1_name, with: 'Picard'
    fill_in :player_2_name, with: 'Borg'
    click_button 'Submit'
    expect(page).to have_content 'Borg: 3 LS'
  end
end
