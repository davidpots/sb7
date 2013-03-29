class Episode < ActiveRecord::Base
  attr_accessible :notes, :show_id, :title, :url_web
  belongs_to :show
  has_many :guestships
end
