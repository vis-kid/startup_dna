require 'spec_helper'

feature 'View the interviewees page' do

	scenario 'User sees correct page title' do
		visit interviewees_path

		user_sees_correct_page_title 'Interviewees'
	end

	scenario 'User sees Header Interviewees' do
		visit interviewees_path

		page_has_correct_data_role 'page_header'
		user_sees_content 'Interviewees'
	end

	scenario 'User sees list of interviewees' do
		interviewee01 = interviewee_named 'David J. Phillips'
		interviewee02 = interviewee_named 'Christian Fernandez'
    
		visit interviewees_path

    user_sees_content 'David J. Phillips'
    user_sees_content 'Christian Fernandez'
		page_loads_correct_amount_of_interviewees 2
		page_does_not_load_incorrect_amount_of_interviewees 1

	end

def page_loads_correct_amount_of_interviewees count
	expect(page).to have_css 'li.interviewee', count: count
end

def page_does_not_load_incorrect_amount_of_interviewees count 
	expect(page).not_to have_css 'li.interviewee', count: count
end
