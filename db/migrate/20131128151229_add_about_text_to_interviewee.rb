class AddAboutTextToInterviewee < ActiveRecord::Migration
  def change
    add_column :interviewees, :about_text, :text
  end
end
