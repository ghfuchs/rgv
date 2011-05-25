class ChangeRestId < ActiveRecord::Migration
  def up
    change_column :restaurants, :restaurant_id, :string, :limit => 8
    change_column :menus, :restaurant_id, :string, :limit => 8
  end

  def down
  end
end
