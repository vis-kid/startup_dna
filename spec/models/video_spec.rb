require 'spec_helper'

describe Video do

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

	context '#category' do

		it 'responds to category' do
			video = video_has_category

			expect(video).to respond_to :category
		end

		it 'returns the correct category' do
      video = video_with_category 'Stanford and the Valley'

			expect(video.category).to eq 'Stanford and the Valley'
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

	context '#youtube_id' do

		it 'responds to youtube_id' do
      video = create :video, youtube_id: '12345678910'

			expect(video).to respond_to :youtube_id
		end
	end

	context '#vimeo_id' do

		it 'responds to vimeo_id' do
      video = create :video

			expect(video).to respond_to :vimeo_id
		end
	end

	describe 'Interviewee association through #interviewee' do

		it 'responds to interviewee' do
			video = create :video

			expect(video).to respond_to :interviewee
		end
	end
end


def video_has_category
  video_with_category 'Some awesome category'
end

def video_with_category(category)
	create :video, category: category
end

def video_has_a_quote
	video_with_quote 'Some quote'
end

def video_with_quote(quote)
	create :video, quote: quote
end

def video_with_description
	video_has_description 'Some awesome description'
end

def video_has_description(description)
	create :video, description: description
end
