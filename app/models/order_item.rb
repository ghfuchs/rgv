class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :cart
end
