class AddTableOrderItem < ActiveRecord::Migration
  def up
    create_table :order_items do |t|
      t.integer :menu_id
      t.integer :qty
      t.string :special_instructions
      t.string :prepared
  end

  def down
    drop_table :order_items
  end
  end
end
