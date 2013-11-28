class CreateCse218PrivateUrls < ActiveRecord::Migration
  def change
    create_table :cse218_private_urls do |t|
      t.string :url
      t.integer :marked,  :default => 0
      t.timestamps
    end
  end
end
