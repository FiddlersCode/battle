feature 'Seeing Borg laser hits' do
  scenario 'Picard can see number of Borg lasers strikes' do
    sign_in_and_play
    expect(page).to have_content 'Borg: 3 LS'
  end
end
