feature 'Switch turns' do
    scenario 'Player1 has the first turn' do
        sign_in_and_play
        expect(page).to have_content("John's turn")
    
  end
  
  scenario 'after player 1 attacks' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content "John's turn"
    expect(page).to have_content "Meg's turn"
  end
end


