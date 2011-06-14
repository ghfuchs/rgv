class AddCol < ActiveRecord::Migration
  def up
    add_column :orders, :pickup_time, :time
  end

  def down
  end
end
