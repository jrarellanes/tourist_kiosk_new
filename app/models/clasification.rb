class Clasification < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :places_interests
end
