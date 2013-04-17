class Image < ActiveRecord::Base
  attr_accessible :user_id
  belongs_to :user
  attr_accessible :pic_file_name
  attr_accessible :pic
  attr_accessible :attach
  has_attached_file :pic
  has_attached_file :attach
end
