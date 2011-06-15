class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :menu_id
      t.integer :qty
      t.string :special_instructions
      t.string :prepared

      t.timestamps
    end
  end
end
