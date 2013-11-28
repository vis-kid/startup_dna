require 'spec_helper'

describe Interviewee, '#name' do

	it 'responds to #name' do
		interviewee = named_interviewee	
		expect(interviewee).to respond_to :name
	end

  it 'returns the correct name' do
    interviewee = interviewee_named 'Steve Huffmann'
		expect(interviewee.name).to eq'Steve Huffmann'
	end


  it 'responds to #twitter_handle' do
		interviewee = interviewee_with_twitter_handle 
		expect(interviewee).to respond_to :twitter_handle
	end

  it 'returns the correct twitter_handle' do
    interviewee = Interviewee.new(twitter_handle: '@steve_huffmann')
		expect(interviewee.twitter_handle).to eq '@steve_huffmann'
	end

end

def interviewee_has_twitter_handle(twitter_handle)
  create(interviewee, twitter_handle: twitter_handle)
end

def interviewee_with_twitter_handle 
  create(:interviewee, twitter_handle: '@steve_huffmann')
end


def named_interviewee
	interviewee_named 'Steve Huffmann'
end

def interviewee_named(name)
  create(:interviewee, name: name)
end


