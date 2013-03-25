class Show < ActiveRecord::Base
  attr_accessible :description, :name, :url_web, :network_id
  belongs_to :network
  has_many :episodes
end
