require 'spec_helper'

feature 'View the videos page' do

	scenario 'User sees header "NEW VIDEO"' do
		visit videos_path
	end

	scenario 'user sees correct title' do
		user_sees_correct_page_title 'Videos'
	end

	scenario 'user sees header "new video"' do
		element_has_correct_data_role 'page_header'
		user_sees_content 'New Video'
	end

	scenario 'User sees quote of videos' do
		video_with_quote = create(:video, quote: 'I have a quote')
		visit videos_path

		element_has_correct_data_role 'video_quote'
		user_sees_content 'I have a quote'
	end

	scenario 'User sees title of videos' do
		video_with_quote = create(:video, title: 'I have a title')
		visit videos_path

		element_has_correct_data_role 'video_title'
		user_sees_content 'I have a title'
	end

	scenario 'User sees video timeline' do
    video01 = video_with_title 'First video'
    video02 = video_with_title 'Second video'
		visit videos_path

		expect(page).to have_title 'Videos'
		expect(page).to have_css "[data-role='video_title']" 
		expect(page).to have_css "[data-role='video_quote']" 
		expect(page).to have_content 'First video'
		expect(page).to have_css 'li.video', count: 2
		expect(page).not_to have_css 'li.video', count: 3
	end

	def video_with_title(title)
    create :video, title: title
	end
end
