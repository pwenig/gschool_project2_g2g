require 'spec_helper'

feature 'Breweries' do

  scenario 'Brewery can create a username and password' do
    visit '/'
    click_on 'Register'
    fill_in 'brewery[name]', with: 'Upslope Brewing'
    fill_in 'brewery[email]', with: 'info@upslope.com'
    fill_in 'brewery[password]', with: 'beer'
    fill_in 'brewery[password_confirmation]', with: 'beer'
    click_on 'Submit'
    expect(page).to have_content "Welcome, Upslope Brewing"
  end
end