feature 'Entering Players' do
  scenario 'User can enter names for players' do
    visit('/')
    fill_in :player_1_name, with: "Picard"
    fill_in :player_2_name, with: "Borg"
    click_button 'Submit'
    expect(page).to have_content "Picard vs. Borg"
  end
end
