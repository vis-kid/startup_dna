class RenameVideoTitleToCategory < ActiveRecord::Migration
  def change
	  rename_column(:videos, :title, :category)	
  end
end
