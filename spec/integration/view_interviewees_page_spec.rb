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
		basic_interviewee
		basic_interviewee
    
		visit interviewees_path

		page_loads_correct_amount_of_interviewees 2
		page_does_not_load_incorrect_amount_of_interviewees 1

	end

  scenario 'User sees Interviewee about_texts' do
		interviewee_with_about_text 'David founded Hackbright Academy'
		interviewee_with_about_text 'Christian co-founded Hackbright Academy'

    visit interviewees_path

		user_sees_content 'David founded Hackbright Academy'
    page_has_correct_data_role 'interviewee_about_text'
	end

  scenario 'User sees Interviewee names' do
		interviewee_named 'David J. Phillips'
		interviewee_named 'Christian Fernandez'

    visit interviewees_path

    page_has_correct_data_role 'interviewee_name'
    user_sees_content 'David J. Phillips'
    user_sees_content 'Christian Fernandez'
	end
end

def interviewee_with_about_text(about_text)
	create :interviewee, about_text: about_text
end

def page_loads_correct_amount_of_interviewees count
	expect(page).to have_css 'li.interviewee', count: count
end

def page_does_not_load_incorrect_amount_of_interviewees count 
	expect(page).not_to have_css 'li.interviewee', count: count
end
