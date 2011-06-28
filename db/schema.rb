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

ActiveRecord::Schema.define(:version => 20110628203536) do

  create_table "admins", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "carts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "category",   :limit => 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "address",    :limit => 25
    t.string   "city",       :limit => 30
    t.string   "state",      :limit => 2
    t.integer  "zipcode",    :limit => 5
    t.boolean  "read_legal"
  end

  create_table "menus", :force => true do |t|
    t.integer  "restaurant_id", :limit => 8,                   :null => false
    t.string   "description",   :limit => 40,                  :null => false
    t.string   "menu_image",    :limit => 40
    t.integer  "qty"
    t.decimal  "price",                       :default => 0.0, :null => false
    t.decimal  "sp_price",                    :default => 0.0
    t.integer  "prep_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category",      :limit => 30
  end

  create_table "order_items", :force => true do |t|
    t.integer "menu_id"
    t.integer "qty"
    t.string  "special_instructions"
    t.string  "prepared"
    t.integer "order_id"
  end

  create_table "orders", :force => true do |t|
    t.integer  "restaurant_id", :limit => 8
    t.integer  "customer_id",   :limit => 8
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "pickup_date"
    t.time     "pickup_time"
  end

  create_table "restaurants", :force => true do |t|
    t.string   "name",                  :limit => 40,                  :null => false
    t.string   "address",               :limit => 25,                  :null => false
    t.string   "city",                  :limit => 30,                  :null => false
    t.string   "state",                 :limit => 2,                   :null => false
    t.integer  "zipcode",               :limit => 5,                   :null => false
    t.boolean  "pickup",                :limit => 1
    t.boolean  "delivery",              :limit => 1
    t.decimal  "min_delivery",                        :default => 0.0
    t.decimal  "delivery_fee",                        :default => 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo"
    t.string   "mon_hours",             :limit => 30
    t.string   "tue_hours",             :limit => 30
    t.string   "wed_hours",             :limit => 30
    t.string   "thu_hours",             :limit => 30
    t.string   "fri_hours",             :limit => 30
    t.string   "sat_hours",             :limit => 30
    t.string   "sun_hours",             :limit => 30
    t.string   "description"
    t.string   "website"
    t.integer  "image_carousel_limit"
    t.integer  "image_carousel_count"
    t.string   "payment_type_accepted"
    t.integer  "admin_id"
  end

  create_table "reviews", :force => true do |t|
    t.string   "restaurant_id",           :limit => 8
    t.string   "customer_id",             :limit => 8
    t.string   "rating",                  :limit => 5
    t.string   "review",                  :limit => 60
    t.date     "date_visited_restaurant"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
