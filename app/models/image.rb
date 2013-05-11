class Image < ActiveRecord::Base
  attr_accessible :user_id, :places_interest_id
  belongs_to :user
  belongs_to :places_interest
  attr_accessible :pic_file_name
  attr_accessible :pic
  attr_accessible :attach
  has_attached_file :pic
  has_attached_file :attach
end
