class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.text :bio
      t.string :url_twitter

      t.timestamps
    end
  end
end
