class User < ActiveRecord::Base
  acts_as_authentic
  cattr_accessor :current_user
  has_many :user_visits
end