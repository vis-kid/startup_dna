class CreateInterviewees < ActiveRecord::Migration
  def change
    create_table :interviewees do |t|
      t.string :name
			t.index  :name

      t.timestamps
    end
  end
end
