class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :title
      t.text :notes
      t.integer :show_id

      t.timestamps
    end
  end
end
