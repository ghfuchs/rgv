class FieldAttributes < ActiveRecord::Migration
  def change
    change_column :restaurants, :restaurant_id, :integer, :null => false
    add_index :restaurants, :restaurant_id, :unique => true
    change_column :restaurants, :name, :string, :limit => 40, :null => false
    change_column :restaurants, :address, :string, :limit => 25, :null => false
    change_column :restaurants, :city, :string, :limit => 30, :null => false
    change_column :restaurants, :state, :string, :limit => 2, :null => false
    change_column :restaurants, :zipcode,:string, :limit => 5, :null => false
    change_column :restaurants, :pickup, :string, :limit => 1
    change_column :restaurants, :delivery, :string, :limit => 1
    change_column :restaurants, :min_delivery, :decimal, :precision => 8, :scale => 2, :default => 0
    change_column :restaurants, :delivery_fee,:decimal, :precision => 8, :scale => 2, :default => 0

    change_column :menus, :restaurant_id, :integer, :null => false
    add_index :menus, :restaurant_id, :unique => true
    change_column :menus, :description, :string, :limit => 40, :null => false
    rename_column :menus, :image, :image_url
   # change_column :menus, :qty, :default => 1, :null => false
    change_column :menus, :price, :decimal, :precision => 8, :scale => 2, :default => 0, :null => false
    change_column :menus, :sp_price, :decimal, :precision => 8, :scale => 2, :default => 0
    change_column :menus, :prep_time,  :time

  end

end
