require 'spec_helper'

feature 'View an Interviewee’s profile page' do

	scenario 'User sees Header Profile' do
		interviewee =  basic_interviewee
		visit interviewees_profile_path(interviewee)

		user_sees_correct_page_title 'Profile'
	end
end

