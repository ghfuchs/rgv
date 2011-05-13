# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110512235942) do

  create_table "customers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menus", :force => true do |t|
    t.integer  "restaurant_id",                                :null => false
    t.string   "description",   :limit => 40,                  :null => false
    t.string   "image_url",     :limit => 40
    t.integer  "qty"
    t.decimal  "price",                       :default => 0.0, :null => false
    t.decimal  "sp_price",                    :default => 0.0
    t.time     "prep_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "menus", ["restaurant_id"], :name => "index_menus_on_restaurant_id", :unique => true

  create_table "restaurants", :force => true do |t|
    t.integer  "restaurant_id",                                :null => false
    t.string   "name",          :limit => 40,                  :null => false
    t.string   "address",       :limit => 25,                  :null => false
    t.string   "city",          :limit => 30,                  :null => false
    t.string   "state",         :limit => 2,                   :null => false
    t.string   "zipcode",       :limit => 5,                   :null => false
    t.string   "pickup",        :limit => 1
    t.string   "delivery",      :limit => 1
    t.decimal  "min_delivery",                :default => 0.0
    t.decimal  "delivery_fee",                :default => 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "restaurants", ["restaurant_id"], :name => "index_restaurants_on_restaurant_id", :unique => true

end
