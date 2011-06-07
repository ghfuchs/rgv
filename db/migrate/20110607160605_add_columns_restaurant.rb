class AddColumnsRestaurant < ActiveRecord::Migration
  def up
    add_column :restaurants, :mon_hours, :string, :limit => 30
    add_column :restaurants, :tue_hours, :string, :limit => 30
    add_column :restaurants, :wed_hours, :string, :limit => 30
    add_column :restaurants, :thu_hours, :string, :limit => 30
    add_column :restaurants, :fri_hours, :string, :limit => 30
    add_column :restaurants, :sat_hours, :string, :limit => 30
    add_column :restaurants, :sun_hours, :string, :limit => 30
    add_column :restaurants, :description, :string
    remove_column :restaurants, :hours

  end

  def down
  end
end
