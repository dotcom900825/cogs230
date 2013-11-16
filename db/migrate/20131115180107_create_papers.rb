class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.string :name
      t.string :url
      t.time :reading_time

      t.timestamps
    end
  end
end
