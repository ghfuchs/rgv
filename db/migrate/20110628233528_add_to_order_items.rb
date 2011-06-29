class AddToOrderItems < ActiveRecord::Migration
  def up
    add_column :order_items, :cart_id, :integer
  end

  def down
    remove_column :order_items, :cart_id
  end
end
