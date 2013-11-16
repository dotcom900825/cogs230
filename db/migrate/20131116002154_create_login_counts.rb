class CreateLoginCounts < ActiveRecord::Migration
  def change
    create_table :login_counts do |t|
      t.integer :esl_count, :default=>0
      t.integer :native_count, :default=>0
      t.timestamps
    end
  end
end
