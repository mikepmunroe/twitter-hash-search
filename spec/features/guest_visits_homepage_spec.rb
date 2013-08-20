require 'spec_helper'

feature 'Guest visits homepage' do
  scenario 'learn about the application' do
    visit root_path

    expect(page).to have_css('h1', text: 'Twitter Hash Search!')
    expect(page).to have_title('Twitter Hash Search') 
  end
end
