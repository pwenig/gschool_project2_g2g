require 'spec_helper'

feature 'Visiting welcome page' do

  scenario 'User view welcome page' do
    visit '/'
    expect(page).to have_content "Welcome"
  end
end