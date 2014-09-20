class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :book_id
      t.text :content
      t.text :ans1
      t.text :ans2
      t.text :ans3
      t.text :ans4

      t.timestamps
    end
  end
end
