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

ActiveRecord::Schema.define(version: 2020_09_02_090408) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "avatar_styles", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.string "rendering_template"
    t.bigint "user_preference_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_preference_id"], name: "index_avatar_styles_on_user_preference_id"
  end

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
    t.string "hairstyle"
    t.string "skin_tone", default: "#C58C85"
    t.string "avatar_rendering_string", default: "<svg width='136px' height='104px' viewBox='0 0 136 104' version='1.1'><g id='Head/Front/Afro' stroke='none' stroke-width='1' fill='none' fill-rule='evenodd'><path d='M61,77.7068588 C72.4289379,77.7068588 76.5854974,64.0240838 83.0786187,56.5153483 C87.7243138,51.143002 95.6530795,52.7449442 98,45.2237762 C103.901542,26.3111237 88.1061086,13 67.5,13 C46.8938914,13 33,24.6742524 30,42.2237762 C27,59.7733 40.3938914,77.7068588 61,77.7068588 Z' id='Hair-Back' fill='#191847'></path><g id='Head' transform='translate(54.000000, 31.000000)' fill='#B28B67'><path d='M8.26227388,34.4901268 C3.65436435,29.0813759 0.535634794,22.4528771 1.05677633,15.0254539 C2.55833022,-6.37502057 32.3485306,-1.66718886 38.1433414,9.13393292 C43.9381521,19.9350547 43.249578,47.3329958 35.7603014,49.2634576 C32.7735882,50.033323 26.4110012,48.1474609 19.935372,44.244306 L24,73 L0,73 L8.26227388,34.4901268 Z'></path></g><path d='M72.379769,51.7233675 C71.5077737,51.2620302 70.5086201,51 69.4466684,51 C66.0464589,51 63.2900445,53.6862915 63.2900445,57 C63.2900445,58.3524891 63.749225,59.6004592 64.5239446,60.6039231 C63.0651901,63.0083834 62.0695832,65.5346814 61.7432388,68.1317726 C56.6870351,68.1317726 38.2335803,49 56.6167901,31 C75,13 101.566014,38.6959598 93.5831606,40.1945268 C88.9934286,41.0561261 79.7498479,45.4379083 72.3797716,51.7233656 Z' id='Hair' fill='#191847'></path></g></svg>"
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
