class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.text :description
      t.float :ri
      t.integer :grade
      t.text :content
      t.timestamps
    end
  end
end
