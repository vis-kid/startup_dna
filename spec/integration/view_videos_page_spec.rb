require 'spec_helper'

feature 'View the videos page' do

	scenario 'User sees video timeline with video#title' do
    video01 = video_with_title 'First video'
    video02 = video_with_title 'Second video'
		visit videos_path

		expect(page).to have_title 'Videos'
		expect(page).to have_css "[data-role='video_title']" 
		expect(page).to have_content 'First video'
		expect(page).to have_css 'li.video', count: 2
		expect(page).not_to have_css 'li.video', count: 3
	end

	def video_with_title(title)
    create(:video, title: title)
	end
end
