require 'spec_helper'

feature 'View the videos page' do

	scenario 'User sees video timeline in descending order' do
		visit videos_path
		expect(page).to have_title 'Videos'
	end
end
