feature 'Entering Players' do
  scenario 'User can enter names for players' do
    visit('/')
    sign_in_and_play
    expect(page).to have_content 'Picard vs. Borg'
  end
end
