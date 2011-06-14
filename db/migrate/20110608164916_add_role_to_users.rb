class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :string
    change_column :menus, :description, :string
  end
end
