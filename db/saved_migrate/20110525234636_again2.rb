class Again2 < ActiveRecord::Migration
  def up
    change_column :menus, :restaurant_id, :integer


  end

  def down
  end
end
