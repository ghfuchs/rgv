class AutoIncrementRestKey < ActiveRecord::Migration
  def up
    drop_table :restaurants
  end

  def down
    drop_table :restaurants

  end
end
