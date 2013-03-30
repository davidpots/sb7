class Person < ActiveRecord::Base
  attr_accessible :bio, :name, :url_twitter
  has_many :guestships
  has_many :hostships
end
