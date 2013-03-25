class CreateHostships < ActiveRecord::Migration
  def change
    create_table :hostships do |t|
      t.integer :person_id
      t.integer :show_id

      t.timestamps
    end
  end
end
