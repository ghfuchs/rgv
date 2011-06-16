class AddColumnOrderItems < ActiveRecord::Migration
  def up
    add_column :order_items, :order_id, :integer
  end

  def down
    remove_column :order_items, :order_id
  end
end
