class PlacesInterest < ActiveRecord::Base
  attr_accessible :description, :horary, :idClasification, :name, :popularity, :urlImage, :address, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode
  has_many :users,:through => :user_visits
  has_many :user_visits, :class_name => "UserVisit"
  has_many :images
end
