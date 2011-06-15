class RemoveMenuId < ActiveRecord::Migration
  def up
    remove_column :orders, :menu_id
  end

  def down
  end
end
