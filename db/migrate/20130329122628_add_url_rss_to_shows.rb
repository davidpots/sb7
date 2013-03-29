class AddUrlRssToShows < ActiveRecord::Migration
  def change
    add_column :shows, :url_rss, :string
  end
end
