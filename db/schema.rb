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

ActiveRecord::Schema.define(version: 2021_08_02_043336) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bridges", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cases", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "conditions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "deliveries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fingerboards", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "listings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "category_id", null: false
    t.bigint "manufacturer_id", null: false
    t.string "model"
    t.bigint "condition_id", null: false
    t.integer "price"
    t.bigint "color_id", null: false
    t.bigint "material_id", null: false
    t.bigint "fingerboard_id", null: false
    t.decimal "scale_length"
    t.decimal "fingerboard_radius"
    t.integer "number_of_frets"
    t.bigint "bridge_id", null: false
    t.string "neck_pickup"
    t.string "bridge_pickup"
    t.bigint "country_id", null: false
    t.integer "year_manufactured"
    t.string "serial_number"
    t.bigint "case_id", null: false
    t.text "description"
    t.bigint "delivery_id", null: false
    t.boolean "sold"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bridge_id"], name: "index_listings_on_bridge_id"
    t.index ["case_id"], name: "index_listings_on_case_id"
    t.index ["category_id"], name: "index_listings_on_category_id"
    t.index ["color_id"], name: "index_listings_on_color_id"
    t.index ["condition_id"], name: "index_listings_on_condition_id"
    t.index ["country_id"], name: "index_listings_on_country_id"
    t.index ["delivery_id"], name: "index_listings_on_delivery_id"
    t.index ["fingerboard_id"], name: "index_listings_on_fingerboard_id"
    t.index ["manufacturer_id"], name: "index_listings_on_manufacturer_id"
    t.index ["material_id"], name: "index_listings_on_material_id"
    t.index ["user_id"], name: "index_listings_on_user_id"
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "listings", "bridges"
  add_foreign_key "listings", "cases"
  add_foreign_key "listings", "categories"
  add_foreign_key "listings", "colors"
  add_foreign_key "listings", "conditions"
  add_foreign_key "listings", "countries"
  add_foreign_key "listings", "deliveries"
  add_foreign_key "listings", "fingerboards"
  add_foreign_key "listings", "manufacturers"
  add_foreign_key "listings", "materials"
  add_foreign_key "listings", "users"
end
