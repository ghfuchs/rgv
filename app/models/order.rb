class Order < ActiveRecord::Base
  belongs_to :Restaurant
  belongs_to :Customer
  belongs_to :Menu

end
