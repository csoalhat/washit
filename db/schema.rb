# encoding: UTF-8
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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140707104508) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "busy_slots", force: true do |t|
    t.datetime "begin"
    t.datetime "end"
    t.boolean  "free"
    t.integer  "user_id"
    t.integer  "area_id"
  end

  create_table "orders", force: true do |t|
    t.string   "pickup_time"
    t.date     "pickup_day"
    t.date     "return_day"
    t.string   "return_time"
    t.string   "instructions"
    t.boolean  "dry_cleaning"
    t.boolean  "wash"
    t.string   "status",       default: "pending"
    t.string   "price"
    t.integer  "provider_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",         null: false
    t.string   "encrypted_password",     default: "",         null: false
    t.string   "users",                  default: "customer"
    t.string   "role",                   default: "customer"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "zipcode"
    t.string   "city"
    t.string   "phone"
    t.string   "area"
    t.string   "lat"
    t.string   "lng"
    t.integer  "default_provider_id"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,          null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "image"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
