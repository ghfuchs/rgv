class Cart < ActiveRecord::Base
  has_many :order_items, :dependent => :destroy
end
