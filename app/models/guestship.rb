class Guestship < ActiveRecord::Base
  attr_accessible :episode_id, :person_id
  belongs_to :episode
  belongs_to :person
end
