class Order < ActiveRecord::Base
  belongs_to :Restaurant
  belongs_to :Customer
  belongs_to :Menu
  has_many :order_items

end
