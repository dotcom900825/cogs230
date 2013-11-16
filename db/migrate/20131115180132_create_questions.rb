class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :problem1
      t.string :problem2
      t.string :problem3
      t.string :problem4

      t.integer :solution
      t.integer :answer

      t.integer :paper_id

      t.timestamps
    end
  end
end
