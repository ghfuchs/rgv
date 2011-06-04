class Acol < ActiveRecord::Migration
  def change
    change_column :restaurants, :hours, :string, :limit => 50
    change_column :menus, :category, :string, :limit => 30
  end


end
