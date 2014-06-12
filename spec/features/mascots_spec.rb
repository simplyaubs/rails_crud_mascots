require 'spec_helper'

feature 'CRUD company mascots' do
  scenario 'User can create a list of mascots' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a mascot'
    fill_in 'Company', with: 'Frontier'
    fill_in 'Company mascot', with: 'Fox'
    click_on 'Add mascot'
    expect(page).to have_content 'Frontier'
    expect(page).to have_content 'Fox'
  end
end