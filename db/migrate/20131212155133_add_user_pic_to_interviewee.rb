class AddUserPicToInterviewee < ActiveRecord::Migration
  def change
		add_attachment :interviewees, :user_pic
  end
end
