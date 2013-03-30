class Hostship < ActiveRecord::Base
  attr_accessible :person_id, :show_id
  belongs_to :show
  belongs_to :person
end
