class KeyAgain < ActiveRecord::Migration
  def up
    add_column :customers, :customer_id, :integer
  end

  def down
  end
end
