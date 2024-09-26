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

ActiveRecord::Schema[7.0].define(version: 2024_09_20_135722) do
  create_table "bands", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "genre"
    t.string "instrument_needs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "studio_id", null: false
    t.date "date"
    t.time "time"
    t.integer "band_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_bookings_on_band_id"
    t.index ["studio_id"], name: "index_bookings_on_studio_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "studios", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "availability"
    t.decimal "price_per_hour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "role"
    t.string "instrument"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "full_name"
    t.string "phone_number"
    t.string "user_type"
    t.string "instruments_played"
    t.string "instrument_needed"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "bands"
  add_foreign_key "bookings", "studios"
  add_foreign_key "bookings", "users"
end
