class AddTwitterHandleToInterviewee < ActiveRecord::Migration
  def change
    add_column :interviewees, :twitter_handle, :string
    add_index :interviewees, :twitter_handle
  end
end
