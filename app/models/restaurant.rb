class Restaurant < ActiveRecord::Base
  has_one :menu
  has_many :orders
  acts_as_votable 
end
