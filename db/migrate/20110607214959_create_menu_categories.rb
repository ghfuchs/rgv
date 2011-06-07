class CreateMenuCategories < ActiveRecord::Migration
  def change
    create_table :menu_categories do |t|
      t.string :category, :limit => 30

      t.timestamps
    end
  end
end
