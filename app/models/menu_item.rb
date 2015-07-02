class MenuItem < ActiveRecord::Base
  belongs_to :menu
  has_many :orders
  acts_as_votable 
end
