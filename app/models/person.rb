class Person < ActiveRecord::Base
  attr_accessible :bio, :name, :url_twitter
  has_many :guestships
end
