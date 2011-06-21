class ChangeIndex < ActiveRecord::Migration
  def up
    remove_index :menus, :restaurant_id
  end

  def down
  end
end
