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
		2.times do
			basic_interviewee
		end 

		visit interviewees_path

		page_loads_correct_amount_of_interviewees 2
		page_does_not_load_incorrect_amount_of_interviewees 1

	end

	scenario 'User sees Interviewee about_texts' do
		interviewee_with_about_text 'David founded Hackbright Academy'
		interviewee_with_about_text 'Christian co-founded Hackbright Academy'

		visit interviewees_path

		page_has_correct_data_role 'interviewee_about_text'
		user_sees_content 'David founded Hackbright Academy'
	end

	scenario 'User sees Interviewee names' do
		interviewee_named 'David J. Phillips'

		visit interviewees_path

		page_has_correct_data_role 'interviewee_name'
		user_sees_content 'David J. Phillips'
	end

	scenario 'User sees Interviewee names' do
		basic_interviewee

		visit interviewees_path

		page_has_correct_data_role 'interviewee_user_pic'
	end

	scenario 'User sees Interviewee twitter_handles' do
		interviewee_with_twitter_handle '@davj'

		visit interviewees_path

		page_has_correct_data_role 'interviewee_twitter_handle'
		user_sees_content '@davj'
	end

	scenario 'User sees Interviewee weblink' do
		interviewee_with_weblink 'www.hackbrightacademy.com'

		visit interviewees_path

		page_has_correct_data_role 'interviewee_weblink'
		user_sees_content 'www.hackbrightacademy.com'
	end

	scenario 'User sees Interviewee videos link' do
		interviewee_has_video

		visit interviewees_path

		page_has_correct_data_role 'interviewee_video_link'
		expect(page).to have_css 'a.video_link', text: 'Video'
	end

	scenario 'User sees Interviewee videos counter with correct number' do
		interviewee_has_video 

		visit interviewees_path

		expect(page).to have_css 'span.video_counter', text: '1'
	end

	scenario 'User sees correct paginated timeline with 15 Interviewees' do
		50.times do 
			interviewee = basic_interviewee
		end

		visit interviewees_path

		page_loads_correct_amount_of_interviewees 7
		expect(page).to have_css 'nav.pagination'
	end
end





def interviewee_has_video
	interviewee = basic_interviewee
	video = basic_video

	interviewee.videos << video
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
