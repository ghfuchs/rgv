class ChangeMenuImage < ActiveRecord::Migration

  def change
    rename_column :menus, :image_url, :menu_image
  end

end
