class ChangeTypeRestaurant < ActiveRecord::Migration
  def up
    change_column :restaurants, :image_carousel_limit, :integer
    change_column :restaurants, :image_carousel_count, :integer
  end

  def down
  end
end
