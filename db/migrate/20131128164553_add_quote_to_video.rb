class AddQuoteToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :quote, :string
  end
end
