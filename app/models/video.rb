class Video < ActiveRecord::Base
	
	validates :youtube_id, length: { is: 11 }


end
