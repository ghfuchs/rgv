class AddIndex < ActiveRecord::Migration
  def up
    add_index :menus, :restaurant_id
    add_index :orders, :restaurant_id
  end

  def down
  end
end
