class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.string :name
      t.text :description
      t.string :url_web

      t.timestamps
    end
  end
end
