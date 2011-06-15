class AddMenuIdInMenu < ActiveRecord::Migration
  def up
    add_column  :menus, :menu_id, :string, :limit => 10
  end

  def down
  end
end
