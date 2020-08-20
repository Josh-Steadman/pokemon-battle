feature 'Attacking' do
    scenario 'Player1 attacks Player2' do
        sign_in_and_play
        click_button('Attack')
        expect(page).to have_content('John attacks Meg!!')
    end
    
    scenario 'Player1 attacks Player2 for 10 HP' do
        sign_in_and_play
        click_button('Attack')
        click_button('OK')
        expect(page).not_to have_content('Meg: 60hp')
        expect(page).to have_content('Meg: 50hp')
    end

    scenario 'Player2 attacks Player1 for 10 HP' do
        sign_in_and_play
        click_button('Attack')
        click_button('OK')
        click_button('Attack')
        click_button('OK')
        expect(page).not_to have_content('John: 60hp')
        expect(page).to have_content('John: 50hp')
    end
end
