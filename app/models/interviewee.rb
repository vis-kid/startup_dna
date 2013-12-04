class Interviewee < ActiveRecord::Base
	has_many :videos

	attr_accessor :title
end
