class AddColumnToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :pickup_date, :date, :pickup_time, :time
  end
end
