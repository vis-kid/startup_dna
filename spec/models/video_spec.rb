require 'spec_helper'

describe Video do

	context '#title' do

		it 'responds to title' do
			video = video_with_title
			expect(video).to respond_to :title
		end

		it 'returns the correct title' do
      video = video_has_title "Stanford is at the heart of the ecosystem"
			expect(video.title).to eq "Stanford is at the heart of the ecosystem"
		end
	end

	context '#description' do

		it 'responds to description' do
      video = video_with_description
			expect(video).to respond_to :description
		end

		it 'returns the correct description' do
      video = video_has_description 'This video explains the stuff'
			expect(video.description).to eq 'This video explains the stuff'
		end
	end
end

def video_with_description
	video_has_description 'Some awesome description'
end

def video_has_description description
	create(:video, description: description)
end

def video_with_title
	video_has_title 'Some awesome title'
end

def video_has_title(title)
	video = create(:video, title: title)
end

