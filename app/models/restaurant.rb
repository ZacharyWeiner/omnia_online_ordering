class Restaurant < ActiveRecord::Base
  has_one :menu
  has_many :orders
end
