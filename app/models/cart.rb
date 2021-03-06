class Cart < ActiveRecord::Base
  has_many :order_items, :dependent => :destroy

  def add_menu(menu_id)
    current_item = order_items.find_by_menu_id(menu_id)
    if current_item
      current_item.qty += 1
    else
      current_item = order_items.build(:menu_id => menu_id)
    end
    current_item
  end

  def total_price
    order_items.to_a.sum { |item| item.total_price }
  end


end
