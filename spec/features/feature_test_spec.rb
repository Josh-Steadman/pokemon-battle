
feature 'form test' do
  scenario 'see players names on screen' do
    visit('/')
    fill_in(:Player_1, with: 'John')
    click_button('Submit')
    expect(page).to have_content('John')
  end
end
