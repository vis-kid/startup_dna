class Interviewee < ActiveRecord::Base
	has_many :videos

	has_attached_file :user_pic
end
