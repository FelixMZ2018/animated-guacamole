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

ActiveRecord::Schema.define(version: 2020_09_01_112659) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string "item_name"
    t.string "lowest_temperature"
    t.string "highest_temperature"
    t.string "color"
    t.bigint "user_preference_id"
    t.bigint "wardrobe_templates_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "condition_array"
    t.string "render_string"
    t.index ["user_preference_id"], name: "index_items_on_user_preference_id"
    t.index ["wardrobe_templates_id"], name: "index_items_on_wardrobe_templates_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "destination"
    t.date "trip_start_date"
    t.date "trip_end_date"
    t.bigint "user_preference_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_preference_id"], name: "index_trips_on_user_preference_id"
  end

  create_table "user_preferences", force: :cascade do |t|
    t.string "default_address"
    t.string "address"
    t.integer "user_id"
    t.float "latitude"
    t.float "longitude"
    t.text "forecast"
    t.datetime "forecast_timestamp"
    t.string "city", default: "Berlin"
    t.integer "temp_br1", default: 0
    t.integer "temp_br2", default: 10
    t.integer "temp_br3", default: 20
    t.integer "temp_br4", default: 30
    t.time "notification_time"
    t.string "name", default: "Marc"
    t.string "avatar", default: "female"
    t.index ["user_id"], name: "index_user_preferences_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wardrobe_templates", force: :cascade do |t|
    t.string "category"
    t.string "svg"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "rendering_group"
  end

end
