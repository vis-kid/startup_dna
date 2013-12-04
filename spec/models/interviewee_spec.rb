require 'spec_helper'

describe Interviewee do

	context '#name' do

		it 'responds to #name' do
			interviewee = named_interviewee	
			expect(interviewee).to respond_to :name
		end

		it 'returns the correct name' do
			interviewee = interviewee_named 'Steve Huffmann'
			expect(interviewee.name).to eq'Steve Huffmann'
		end
	end

	context '#twitter_handle' do

		it 'responds to #twitter_handle' do
      interviewee = interviewee_has_twitter_handle
      expect(interviewee).to respond_to :twitter_handle
		end

		it 'returns the correct twitter_handle' do
      interviewee = interviewee_with_twitter_handle '@steve_huffmann'  
      expect(interviewee.twitter_handle).to eq '@steve_huffmann'
		end
	end

	context '#weblink' do

		it 'responds to #weblink' do
      interviewee = interviewee_has_weblink
      expect(interviewee).to respond_to :weblink
		end

		it 'returns the correct weblink' do
      interviewee = interviewee_with_weblink 'www.hipmunk.com'
      expect(interviewee.weblink).to eq 'www.hipmunk.com'
		end
	end
	
	context '#about_text' do

		it 'responds to #about_text' do
      interviewee = interviewee_has_about_text
      expect(interviewee).to respond_to :about_text
		end

		it 'returns the correct weblink' do
      interviewee = interviewee_with_about_text 'He was a co-founder ...'
      expect(interviewee.about_text).to eq 'He was a co-founder ...'
		end
	end

	describe Interviewee, '#videos' do

		it 'responds to video' do
			interviewee = create(:interviewee)
			expect(interviewee).to respond_to :videos
		end

		it 'associates user to user-specific videos' do
			interviewee = basic_interviewee 
			correct_video = basic_video 
			other_video = basic_video

			interviewee.videos << correct_video

			expect(interviewee.videos).to include correct_video
			expect(interviewee.videos).not_to include other_video
			expect(interviewee.videos.length).to eq 1

		end
	end

	def basic_interviewee
    create(:interviewee)
	end

	def basic_video
    create(:video)
	end

end




def interviewee_has_about_text
	interviewee_with_about_text 'Some about text goes in here'
end

def interviewee_with_about_text(description)
  create(:interviewee, about_text: description)
end

def interviewee_has_weblink
  interviewee_with_weblink 'www.hipmunk.com'
end

def interviewee_with_weblink(weblink)
  create(:interviewee, weblink: weblink)
end

def interviewee_has_twitter_handle
	interviewee_with_twitter_handle '@steve_huffmann'
end

def interviewee_with_twitter_handle(twitter_handle)
	create(:interviewee, twitter_handle: twitter_handle)
end

def named_interviewee
	interviewee_named 'Steve Huffmann'
end

def interviewee_named(name)
	create(:interviewee, name: name)
end


