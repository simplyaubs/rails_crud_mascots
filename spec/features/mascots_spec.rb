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

  scenario 'User can update a mascot' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a mascot'
    fill_in 'Company', with: 'Frontier'
    fill_in 'Company mascot', with: 'Fox'
    click_on 'Add mascot'
    expect(page).to have_content 'Frontier'
    expect(page).to have_content 'Fox'
    click_on 'Frontier'
    expect(page).to have_content 'Frontier'
    expect(page).to have_content 'Fox'
    click_on 'Edit'
    fill_in 'Company', with: 'Delta'
    fill_in 'Company mascot', with: 'Triangle'
    click_on 'Update mascot'
    expect(page).to have_content 'Delta'
    expect(page).to have_content 'Triangle'
    expect(page).to_not have_content 'Frontier'
    expect(page).to_not have_content 'Fox'
  end
end