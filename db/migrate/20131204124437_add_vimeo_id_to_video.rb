class AddVimeoIdToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :vimeo_id, :string
    add_index :videos, :vimeo_id
  end
end
