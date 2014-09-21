class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :child_id
      t.integer :question_id
      t.string :ans

      t.timestamps
    end
  end
end
