class Network < ActiveRecord::Base
  attr_accessible :description, :name, :url_web
  has_many :shows
end
