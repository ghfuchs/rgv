class MenuAttrChange < ActiveRecord::Migration
  def up
    change_column :menus, :prep_time, :integer
  end

  def down
  end
end
