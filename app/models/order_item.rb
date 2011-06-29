class OrderItem < ActiveRecord::Base
  attr_accessible :menu_id, :qty, :special_instructions, :prepared,
      :order_id, :cart_id
  belongs_to :menu
  belongs_to :order
  belongs_to :cart

  def total_price
    menu.price * qty
  end
end
