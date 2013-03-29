class AddUrlItunesToShows < ActiveRecord::Migration
  def change
    add_column :shows, :url_itunes, :string
  end
end
