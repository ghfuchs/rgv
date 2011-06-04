class AddCollumns < ActiveRecord::Migration
  def up
    add_column :restaurants, :logo, :string
    add_column :restaurants, :hours, :string
    add_column :menus, :category, :string, :limit => 30
  end

  def down
  end
end
