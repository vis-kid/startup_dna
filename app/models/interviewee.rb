class Interviewee < ActiveRecord::Base

  has_many :videos
  
  has_attached_file :user_pic,:styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

end
