class AddColumns < ActiveRecord::Migration
  def up
    add_column :restaurants, :website, :string
    add_column :restaurants, :image_carousel_limit, :decimal, :limit => 2
    add_column :restaurants, :image_carousel_count, :decimal, :limit => 2
    add_column :restaurants, :payment_type_accepted, :string
  end

  def down
  end
end
