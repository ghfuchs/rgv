class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :restaurant_id, :limit => 8
      t.string :customer_id, :limit => 8
      t.string :order_id, :limit => 10
      t.string :menu_id, :limit => 10

      t.timestamps
    end
  end
end
