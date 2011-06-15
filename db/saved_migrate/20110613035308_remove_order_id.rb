class RemoveOrderId < ActiveRecord::Migration
  def up
    remove_column :orders, :order_id
  end

  def down
  end
end
