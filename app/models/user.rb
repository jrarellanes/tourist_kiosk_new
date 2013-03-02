class User < ActiveRecord::Base
  acts_as_authentic
  cattr_accessor :current_user
  has_many :user_visits
  has_many :places_interests, :through => :user_visits
  has_many :user_visits, :class_name => "UserVisit"
end