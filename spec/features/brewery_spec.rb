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
    expect(page).to have_content "info@upslope.com"
  end

  scenario 'Brewery can login with valid username and password' do
    visit '/'
    click_on 'Register'
    fill_in 'brewery[name]', with: 'Upslope Brewing'
    fill_in 'brewery[email]', with: 'info@upslope.com'
    fill_in 'brewery[password]', with: 'beer'
    fill_in 'brewery[password_confirmation]', with: 'beer'
    click_on 'Submit'
    click_on 'Logout'
    click_on 'Login'
    fill_in 'brewery[email]', with: 'info@upslope.com'
    fill_in 'brewery[password]', with: 'beer'
    click_on 'Submit'
    expect(page).to have_content "Welcome, info@upslope.com"

  end


end