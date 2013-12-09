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


end
