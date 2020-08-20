
feature 'Losing the game'do
  scenario 'lose the game when at 0hp' do
    sign_in_and_play
    11.times {attack_and_return}
    expect(page).to have_content('Winner is John!!')
  end
end