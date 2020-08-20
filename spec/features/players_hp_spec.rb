feature 'HP test' do
    scenario 'player 2 has hit points' do
        sign_in_and_play
      expect(page).to have_content('Meg: 60hp')
    end

    scenario 'player 1 has hit points' do
      sign_in_and_play
    expect(page).to have_content('John: 60hp')
    end
end