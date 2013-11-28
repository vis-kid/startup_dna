require 'spec_helper'

describe Video do

	context '#title' do

		it 'responds to title' do
      video = Video.new(title: "Stanford is at the heart of the ecosystem")
			expect(video).to respond_to :title
		end

		it 'returns the correct title' do
      video = Video.new(title: "Stanford is at the heart of the ecosystem")
			expect(video.title).to eq "Stanford is at the heart of the ecosystem"
		end
	end
end
