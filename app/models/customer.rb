class Customer < ActiveRecord::Base
  has_many :Orders
end
