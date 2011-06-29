class ChangeQtyInOrderItems < ActiveRecord::Migration
  def up
    change_column :order_items, :qty, :integer, :default => 1
  end

  def down
  end
end
