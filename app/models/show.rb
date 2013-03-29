class Show < ActiveRecord::Base
  attr_accessible :description, :name, :url_web, :url_itunes, :url_rss, :network_id
  belongs_to :network
  has_many :episodes
end
