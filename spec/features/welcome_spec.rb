require 'spec_helper'

feature 'Visiting welcome page' do

  scenario 'Brewery view welcome page' do
    visit '/'
    expect(page).to have_content "Growlers to Go"
  end
end