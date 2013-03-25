class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.text :description
      t.string :url_web

      t.timestamps
    end
  end
end
