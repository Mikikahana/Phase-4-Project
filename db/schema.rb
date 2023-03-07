# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_07_005738) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "pfp_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "pfp_url"
    t.string "vehicle_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.bigint "restaurant_id", null: false
    t.string "item_name"
    t.float "item_price"
    t.string "item_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order_id"
    t.index ["restaurant_id"], name: "index_menus_on_restaurant_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "restaurant_id", null: false
    t.bigint "customer_id", null: false
    t.bigint "driver_id", null: false
    t.float "order_total"
    t.float "delivery_fee"
    t.string "delivery_address"
    t.string "order_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["driver_id"], name: "index_orders_on_driver_id"
    t.index ["restaurant_id"], name: "index_orders_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "restaurant_manager"
    t.string "email"
    t.string "password"
    t.string "pfp_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "menus", "restaurants"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "drivers"
  add_foreign_key "orders", "restaurants"
end
