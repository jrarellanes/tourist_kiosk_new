class PlacesInterest < ActiveRecord::Base
  attr_accessible :description, :horary, :idClasification, :name, :popularity, :urlImage, :address, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode
end
