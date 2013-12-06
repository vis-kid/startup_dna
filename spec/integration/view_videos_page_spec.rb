require 'spec_helper'

feature 'View the videos page' do

	background do
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

	scenario 'User sees category of videos' do
		video_with_category = create(:video, category: 'I have a category')
		visit videos_path

		element_has_correct_data_role 'video_category'
		user_sees_content 'I have a category'
	end

	scenario 'User sees video timeline' do
    video01 = video_with_category 'Programming & Education'
    video02 = video_with_category 'Venture Capital'
		visit videos_path

		user_sees_content 'Programming & Education'
		page_loads_correct_amount_of_videos 2
		page_not_loads_incorrect_amount_of_videos 3
	end



	def page_not_loads_incorrect_amount_of_videos count 
		expect(page).not_to have_css 'li.video', count: count
	end

	def page_loads_correct_amount_of_videos count
		expect(page).to have_css 'li.video', count: count
	end

	def video_with_category(category)
    create :video, category: category
	end
end
