class AddIdToRest < ActiveRecord::Migration
  def change
    rename_column :restaurants, :id, :restaurant_id
    rename_column :menus, :id, :restaurant_id

  end
end
