class CreateGuestships < ActiveRecord::Migration
  def change
    create_table :guestships do |t|
      t.integer :person_id
      t.integer :episode_id

      t.timestamps
    end
  end
end
