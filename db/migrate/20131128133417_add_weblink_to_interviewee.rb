class AddWeblinkToInterviewee < ActiveRecord::Migration
  def change
    add_column :interviewees, :weblink, :string
    add_index :interviewees, :weblink
  end
end
