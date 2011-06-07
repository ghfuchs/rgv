class Customer < ActiveRecord::Base
  has_many :Orders
  has_many :reviews
end
