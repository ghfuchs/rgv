class ChgCol < ActiveRecord::Migration
  def up
    change_column :menus, :description, :string
  end

  def down
  end
end
