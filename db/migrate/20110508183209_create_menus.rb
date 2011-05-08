class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :description
      t.string :image
      t.integer :qty
      t.decimal :price
      t.decimal :sp_price
      t.integer :prep_time

      t.timestamps
    end
  end
end
