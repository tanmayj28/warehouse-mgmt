# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_14_125605) do

  create_table "inventories", force: :cascade do |t|
    t.string "product_code"
    t.string "warehouse_code"
    t.integer "item_count"
    t.integer "item_threshold"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_code"], name: "index_inventories_on_product_code", unique: true
    t.index ["warehouse_code"], name: "index_inventories_on_warehouse_code", unique: true
  end

  create_table "products", force: :cascade do |t|
    t.string "sku_code", limit: 8, null: false
    t.string "name"
    t.decimal "price", precision: 10, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sku_code"], name: "index_products_on_sku_code", unique: true
  end

  create_table "warehouses", force: :cascade do |t|
    t.string "wh_code", limit: 8, null: false
    t.string "name"
    t.integer "pincode"
    t.integer "max_capacity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["wh_code"], name: "index_warehouses_on_wh_code", unique: true
  end

end
