class UserVisit < ActiveRecord::Base
  set_table_name :user_visits
  attr_accessible :dateVisit, :idsite, :iduser, :ratig
  belongs_to :user  
  belongs_to :places_interest
end
