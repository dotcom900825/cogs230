class CreateUserPapers < ActiveRecord::Migration
  def change
    create_table :user_papers do |t|
      t.integer :user_id
      t.integer :paper_id
      t.timestamps
    end
  end
end
