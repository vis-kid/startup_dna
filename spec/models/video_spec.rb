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

	context '#quote' do

		it 'responds to quote' do
      video = video_has_a_quote
			expect(video).to respond_to :quote
		end

		it 'returns the correct quote' do
      video = video_with_quote 'Stanford is the best'
			expect(video.quote).to eq 'Stanford is the best'
		end
	end

	context '#youtube_id' do

		it 'responds to youtube_id' do
      video = create(:video, youtube_id: '12345678910')
			expect(video).to respond_to :youtube_id
		end
	end

	context '#vimeo_id' do

		it 'responds to vimeo_id' do
      video = create(:video)
			expect(video).to respond_to :vimeo_id
		end
	end


	describe Video, '#interviewee' do
		it 'responds to interviewee' do
			video = create(:video)
			expect(video).to respond_to :interviewee
		end
	end

end

def video_has_a_quote
  video_with_quote 'Some quote'
end

def video_with_quote(quote)
	create(:video, quote: quote)
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

