require 'spec_helper'

feature 'Breweries' do

  scenario 'Brewery can create a username and password and add a beer the products page' do
    visit '/'
    click_on 'Register'

    fill_in 'brewery[name]', with: 'Upslope Brewing'
    fill_in 'brewery[email]', with: 'info@upslope.com'
    fill_in 'brewery[password]', with: 'beer'
    fill_in 'brewery[password_confirmation]', with: 'beer'
    click_on 'Submit'

    click_on 'Add Product'
    fill_in 'product[name]', with: 'Pale Ale'
    fill_in 'product[description]', with: 'This clear, crisp, dry Pale Ale is our signature.'
    fill_in 'product[abv]', with: '5.8%'
    click_on 'Submit'

    expect(page).to have_content "Pale Ale"
    expect(page).to have_content "This clear, crisp, dry Pale Ale is our signature."
    expect(page).to have_content "5.8%"
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