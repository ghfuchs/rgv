class TryAgain < ActiveRecord::Migration
  def up
    add_column :customers, :user_id, :integer
    add_column :customers, :address, :string, :limit => 25
    add_column :customers, :city, :string, :limit => 30
    add_column :customers, :state, :string, :limit => 2
    add_column :customers, :zipcode, :integer, :limit => 5
    add_column :customers, :read_legal, :boolean
  end

  def down
    remove_column :customers, :user_id
    remove_column :customers, :address
    remove_column :customers, :city
    remove_column :customers, :state
    remove_column :customers, :zipcode
    remove_column :customers, :read_legal
  end
end
