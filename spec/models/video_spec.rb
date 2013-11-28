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

	context '#description' do

		it 'responds to description' do
      video = Video.new(description: "This video explains the stuff")
			expect(video).to respond_to :description
		end

		it 'returns the correct description' do
      video = Video.new(description: "This video explains the stuff")
			expect(video.description).to eq "This video explains the stuff"
		end
	end
end
