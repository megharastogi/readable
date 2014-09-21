class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.integer :user_id
      t.integer :age
      t.integer :grade

      t.timestamps
    end
  end
end
