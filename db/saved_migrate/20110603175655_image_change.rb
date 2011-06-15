class ImageChange < ActiveRecord::Migration
  def up
    rename_column :menus, :image_url, :menu_image
  end

  def down
  end
end
