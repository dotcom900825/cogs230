class AddPrivatePaperUrlToUser < ActiveRecord::Migration
  def change
    add_column :users, :private_paper_url, :string
  end
end
