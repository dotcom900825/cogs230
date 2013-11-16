class AddNotUseSystemUrlToPaper < ActiveRecord::Migration
  def change
    add_column :papers, :not_collaborative_url, :string
  end
end
