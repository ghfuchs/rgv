class RenameTable < ActiveRecord::Migration
  def up
    rename_table :menu_categories, :categories
  end

  def down
  end
end
