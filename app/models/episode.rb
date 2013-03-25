class Episode < ActiveRecord::Base
  attr_accessible :notes, :show_id, :title
  belongs_to :show
end
