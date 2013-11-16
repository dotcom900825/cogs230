class AddIndicatorToUser < ActiveRecord::Migration
  def change
    add_column :users, :use_system, :integer
  end
end
