require 'spec_helper'

feature 'View the videos page' do

	scenario 'User sees video timeline' do
    video01 = create(:video, title: 'First video')
    video02 = create(:video, title: 'Second video')
		visit videos_path

		expect(page).to have_title 'Videos'
		expect(page).to have_css 'li.video', count: 2
		expect(page).to have_content 'First video'
		expect(page).to have_content 'Second video'
		expect(page).not_to have_css 'li.video', count: 3
	end
end
