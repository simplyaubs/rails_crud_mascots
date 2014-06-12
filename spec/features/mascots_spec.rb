require 'spec_helper'

feature 'CRUD company mascots' do
  scenario 'User can see welcome page' do
    visit '/'
    expect(page).to have_content 'Welcome'
  end
end