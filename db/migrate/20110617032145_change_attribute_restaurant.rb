class ChangeAttributeRestaurant < ActiveRecord::Migration
  def up
    change_column :restaurants, :pickup, :boolean
    change_column :restaurants, :delivery, :boolean
  end

  def down
  end
end
