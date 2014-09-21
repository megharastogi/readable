class AddTagsToBooks < ActiveRecord::Migration
  def change
  	add_column :books, :tags, :string
  end
end
