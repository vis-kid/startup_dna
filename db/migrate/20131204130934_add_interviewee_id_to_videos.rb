class AddIntervieweeIdToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :interviewee_id, :integer
    add_index :videos, :interviewee_id
  end
end
