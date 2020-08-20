
def sign_in_and_play
    visit('/')
    fill_in(:Player_1, with: 'John')
    fill_in(:Player_2, with: 'Meg')
    click_button('Submit')
end

def attack_and_return
    click_button('Attack')
    click_button('OK')
end