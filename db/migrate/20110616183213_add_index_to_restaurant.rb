class AddIndexToRestaurant < ActiveRecord::Migration
  def up
    add_column :restaurants, :admin_id, :integer
  end

  def down
    remove_column :restaurants, :admin_id
  end
end
