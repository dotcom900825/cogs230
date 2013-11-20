class RemoveReadTimeColumn < ActiveRecord::Migration
  def change
    remove_column :papers, :reading_time
    add_column :user_papers, :reading_time, :time
  end
end
