class CreateRestAgain < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, :limit => 40, :null => false
      t.string :address, :limit => 25, :null => false
      t.string :city, :limit => 30, :null => false
      t.string :state, :limit => 2, :null => false
      t.integer :zipcode, :limit => 5, :null => false
      t.string :pickup, :limit => 1
      t.string :delivery, :limit => 1
      t.decimal :min_delivery, :precision => 8, :scale => 2, :default => 0
      t.decimal :delivery_fee, :precision => 8, :scale => 2, :default => 0

      t.timestamps

    end
  end
end
