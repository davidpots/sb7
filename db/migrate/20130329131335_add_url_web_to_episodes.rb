class AddUrlWebToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :url_web, :string
  end
end
