class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :pickup
      t.string :delivery
      t.decimal :min_delivery
      t.decimal :delivery_fee

      t.timestamps
    end
  end
end
