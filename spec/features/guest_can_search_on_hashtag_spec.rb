require 'spec_helper'

feature 'Guest can search on hashtag' do 
  scenario 'user enters a hash search string' do
    visit root_path

    fill_in 'Search', with: '#rails'
    click_on 'Submit'

    expect(page).to have_css('.results li', count: 15, text: /#rails/i)
  end
end