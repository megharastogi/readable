class CreateBookVersions < ActiveRecord::Migration
  def change
    create_table :book_versions do |t|
      t.integer :book_id
      t.integer :grade
      t.text :content
      t.float :ri

      t.timestamps
    end
  end
end
