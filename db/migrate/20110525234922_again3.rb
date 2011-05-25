class Again3 < ActiveRecord::Migration
  def up
    change_column :orders, :restaurant_id, :integer
  end

  def down
  end
end
