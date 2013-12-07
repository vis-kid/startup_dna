require 'spec_helper'

feature 'View the videos page' do

	scenario 'User sees correct page title' do
		visit videos_path
		user_sees_correct_page_title 'Videos'
	end

	scenario 'User sees Header "New Video"' do
		visit videos_path
		page_has_correct_data_role 'page_header'
		user_sees_content 'New Video'
	end

	scenario 'User sees name of interviewee' do
		video01 = basic_video
		matsumoto = interviewee_named 'Matz'
		matsumoto.videos << video01

		visit videos_path

		page_has_correct_data_role 'interviewee_name'
		user_sees_content 'Matz'
	end

	scenario 'User sees quote of videos' do
		video = video_with_quote 'I have a quote'
		interviewee = basic_interviewee
		interviewee.videos << video

		visit videos_path

		page_has_correct_data_role 'video_quote'
		user_sees_content 'I have a quote'
	end

	scenario 'User sees category of videos' do
    video = video_with_category 'Programming & Education'
		interviewee = basic_interviewee
		interviewee.videos << video

		visit videos_path

		page_has_correct_data_role 'video_category'
		user_sees_content 'Programming & Education'
	end

  scenario 'User sees video description' do
		video = video_with_description 'Steve describes the early days of Reddit'
		interviewee = basic_interviewee
		interviewee.videos << video

    visit videos_path

		user_sees.content 'Steve describes the early days of Reddit'
    page_has_correct_data_role 'video_description'
	end

	scenario 'User sees video timeline' do
    video01 = video_with_quote 'Techcrunch pushes for exclusives'
    video02 = video_with_quote 'Venture Capital needs reform'
		interviewee01 = basic_interviewee
		interviewee02 = basic_interviewee

		interviewee01.videos << video01
		interviewee02.videos << video02

		visit videos_path

		user_sees_content 'Techcrunch pushes for exclusives'
		user_sees_content 'Venture Capital needs reform'
		page_loads_correct_amount_of_videos 2
		page_does_not_load_incorrect_amount_of_videos 3
	end

end

def page_does_not_load_incorrect_amount_of_videos count 
	expect(page).not_to have_css 'li.video', count: count
end

def page_loads_correct_amount_of_videos count
	expect(page).to have_css 'li.video', count: count
end

