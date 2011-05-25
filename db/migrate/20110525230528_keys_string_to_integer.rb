class KeysStringToInteger < ActiveRecord::Migration
  def up
    change_column :restaurants, :restaurant_id, :integer
    change_column :menus, :menu_id, :integer, :restaurant_id, :integer
    change_column :orders, :order_id, :integer, :menu_id, :integer
    add_column :customers, :customer_id, :integer
  end

  def down
  end
end
