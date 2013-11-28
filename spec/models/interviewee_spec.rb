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
end



def named_interviewee
	interviewee_named 'Steve Huffmann'
end

def interviewee_named(name)
  create(:interviewee, name: name)
end


