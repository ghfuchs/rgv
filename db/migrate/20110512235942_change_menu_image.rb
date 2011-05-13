class ChangeMenuImage < ActiveRecord::Migration
  def change
    change_column :menus, :image_url, :string, :limit => 40
  end

end
