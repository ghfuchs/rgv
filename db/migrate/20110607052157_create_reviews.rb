class CreateReviews < ActiveRecord::Migration
  def up
    create_table :reviews do |t|
      t.string :restaurant_id, :limit => 8
      t.string :customer_id, :limit => 8
      t.string :rating, :limit => 5
      t.string :review, :limit => 60
      t.date :date_visited_restaurant

      t.timestamps
    end
  end

  def down

  end

end
