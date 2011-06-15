class DeleteNamedKerys < ActiveRecord::Migration
  def up
    remove_column :restaurants, :restaurant_id
    remove_column :menus, :menu_id
    remove_column :customers, :customer_id
  end

  def down
  end
end
