require 'spec_helper'

feature 'View the interviewee/new page' do
  scenario 'create a new interviewee' do
    visit new_interviewee_path
	
    fill_in 'Name',           with: 'Sebastian Thrun'
    fill_in 'About text',     with: 'Sebastian is well known for ...'
    fill_in 'Twitter handle', with: '@thrun'
    fill_in 'Weblink',        with: 'www.udacity.com'
    
    click_button 'Save Interviewee'
    
    within("[data-role='interviewee_name']") do
      user_sees_content 'Sebastian Thrun'
    expect(page).to have_content 'Sebastian Thrun'
    end
  end
end
