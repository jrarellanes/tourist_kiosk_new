class UserVisit < ActiveRecord::Base
  attr_accessible :dateVisit, :idsite, :iduser, :ratig
  belongs_to :user  
end
