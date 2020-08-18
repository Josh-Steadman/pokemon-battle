require 'app'
require 'spec_helper'


feature 'Testing infrasturcture' do
    scenario 'check hompage content' do
      visit('/')
      expect(page).to have_content('Testing infrastructure working!')
    end
end