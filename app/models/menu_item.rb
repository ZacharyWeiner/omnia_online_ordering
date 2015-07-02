class MenuItem < ActiveRecord::Base
  belongs_to :menu
  has_many :orders
end
